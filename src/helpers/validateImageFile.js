import axios from "axios";
import fs from "fs";
import https from "https";
import AWS from 'aws-sdk';
// import fs from 'fs';
import path from 'path';
import mime from 'mime-types';

AWS.config.update({
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  region: process.env.AWS_REGION
});
 
const s3 = new AWS.S3();

function checkFileSignature(buffer) {
  const fileSignatures = {
    "89504E470D0A1A0A": "PNG",
    FFD8FFE0: "JPEG",
    FFD8FF: "JPG",
    52494646: "WEBP",
    // Add more file signatures as needed
  };
  const hexSignature = buffer.slice(0, 8).toString("hex").toUpperCase();

  for (const signature in fileSignatures) {
    if (hexSignature.startsWith(signature)) {
      return fileSignatures[signature];
    }
  }
  return null;
}
const maxSize = 2500 * 1024;
export async function ImageFileCheck(name, data, size) {
  try {
    let filePath = `./src/uploads/${name}`;
    if (data == "category") {
      filePath = `./src/uploads/filterProduct/category/${name}`;
    } else if (data == "bestSeller") {
      filePath = `./src/uploads/bestSeller/${name}`;
    } else if (data == "gender") {
      filePath = `./src/uploads/filterProduct/gender/${name}`;
    } else if (data == "educationInfo") {
      filePath = `./src/uploads/educationCertificate/${name}`;
    } else if (data == "footer") {
      filePath = `./src/uploads/footer/${name}`;
    }else if(data=='ui'){
      filePath = `./src/uploads/ui/${name}`;
      
    }
    // console.log(filePath,"filepasthhhhhhh",maxSize,"maxSizemaxSize",size,"sizesize")
    let check = fs.readFileSync(filePath);
    const filetype = checkFileSignature(check);
    // console.log(filetype,"filetypefiletype");
    if (filetype == "PNG" || filetype == "JPEG" || filetype == "WEBP"||filetype=='JPG') {
      // console.log(filetype,"  ####filetypefiletype@@@@@@@@@@2");
      if (size > maxSize) {
        // console.log(size,maxSize,"sssssssssss")
        await fs.unlinkSync(filePath);
        return "invalid file";
      } else {
        return "valid file";
      }
    } else if (filetype == null) {
      // res.status(400).json({
      //   message: "Invalid file uploaded",
      //   success: false,
      //   statusCode: 400,
      // });
      await fs.unlinkSync(filePath);
      return "invalid file";
    }
  } catch (err) {
    console.error(err, "errro");
    return false;
  }
}

export async function ImageFileCheckForUI(name, res, size) {
  try {
    const filePath = `./src/uploads/ui/${name}`;
    // console.log(filePath,"filepasthhhhhhh")
    let check = fs.readFileSync(filePath);
    const filetype = checkFileSignature(check);
    if (filetype == "PNG" || filetype == "JPEG" || filetype == "WEBP"||filetype=='JPG') {
      if (size > maxSize) {
        // console.log(size,maxSize,"sssssssssss")
        await fs.unlinkSync(filePath);
        return "invalid file";
      } else {
        return "valid file";
      }
    } else if (filetype == null) {
      // res.status(400).json({
      //   message: "Invalid file uploaded",
      //   success: false,
      //   statusCode: 400,
      // });
      await fs.unlinkSync(filePath);
      return "invalid file";
    }
  } catch (err) {
    console.error(err, "errro in ImageFileCheckForUI");
  }
}

export async function removefIle(name, data) {
  try {
    let filePath = `./src/uploads/${name}`;
    if (data == "category") {
      filePath = `./src/uploads/filterProduct/category/${name}`;
    } else if (data == "bestSeller") {
      filePath = `./src/uploads/bestSeller/${name}`;
    } else if (data == "gender") {
      filePath = `./src/uploads/filterProduct/gender/${name}`;
    } else if (data == "educationInfo") {
      filePath = `./src/uploads/educationCertificate/${name}`;
    }else if(data=='ui'){
      filePath = `./src/uploads/ui/${name}`;
    }else if(data=='footer'){
      filePath = `./src/uploads/footer/${name}`;
    }
    console.log(filePath, "filepathdwqdqw");
    await fs.unlinkSync(filePath);
  } catch (err) {
    console.error(err, "err removefIle");
  }
}

 
let j;
export async function deleteCdnFile(filename, type) {
  try {
      let key;
      if (type === "categories" || type === "category" || type === "gender" || type === "shape") {
          key = `luxyara/uploads/filterProduct/${type}/${filename}`;
      } else if (type === 'ui') {
          key = `luxyara/uploads/ui/${filename}`;
      } else if (type === 'bestSeller') {
          key = `luxyara/uploads/bestSeller/${filename}`;
      } else if (type === 'footer') {
          key = `luxyara/uploads/footer/${filename}`;
      } else {
          throw new Error('Invalid type specified');
      }

      const params = {
          Bucket: process.env.S3_BUCKET_NAME,
          Key: key
      };

      await s3.deleteObject(params).promise();
      console.log(`Deleted ${filename} from S3 bucket.`);
  } catch (err) {
      console.error(`Error deleting ${filename} from S3:`, err);
  }
}

 


export async function cdnFuncCall(filename, filePath, type) {
  try {
    console.log(filePath, "filePath !@#", type, "######");

    const fileData = fs.readFileSync(filePath);

    let s3Path = `luxyara/uploads/${filename}`;
    if (type == "category") {
      s3Path = `luxyara/uploads/filterProduct/category/${filename}`;
    } else if (type == "gender") {
      s3Path = `luxyara/uploads/filterProduct/gender/${filename}`;
    } else if (type == "shape") {
      s3Path = `luxyara/uploads/filterProduct/shape/${filename}`;
    } else if (type == 'ui') {
      s3Path = `luxyara/uploads/ui/${filename}`;
    } else if (type == 'bestSeller') {
      s3Path = `luxyara/uploads/bestSeller/${filename}`;
    } else if (type == 'footer') {
      s3Path = `luxyara/uploads/footer/${filename}`;
    }

    const contentType = mime.lookup(filePath) || 'application/octet-stream';
    const params = {
      Bucket: process.env.S3_BUCKET_NAME, // Your bucket name
      Key: s3Path,
      Body: fileData,
      ContentType: contentType
    };

    const data = await s3.upload(params).promise();
    console.log(`Image uploaded successfully: ${data.Location}`);
  } catch (error) {
    console.error("Error uploading image:", error);
  }
}
 