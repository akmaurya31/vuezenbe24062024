import express from 'express';
import multer from 'multer';
import AWS from 'aws-sdk';
// import { s3 } from '../../config/aws.js'; // Adjust path as needed
import { v4 as uuidv4 } from 'uuid'; // For generating unique file names

// AWS_ACCESS_KEY_ID="AKIAVRUVUXHFXPCKVFE5"
// AWS_SECRET_ACCESS_KEY="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"
// AWS_REGION="us-west-1"
// S3_BUCKET_NAME="publicluxs3"

const s3 = new AWS.S3({
    accessKeyId: process.env.AWS_ACCESS_KEY_ID,
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
    region: process.env.AWS_REGION, // e.g., 'us-west-1'
  });
  

const PhpRoutes = express.Router();

const storage = multer.memoryStorage(); // Use memory storage for S3 uploads
const upload = multer({ storage: storage });

PhpRoutes.get('/', (req, res) => {
    res.status(200).send("Welcome to Luxyara. Post your files to http://localhost:2000/api/php/add_product");
});

PhpRoutes.post(
    '/add_product',
    upload.single('pdf_upload'), // Changed to single file upload
    async (req, res) => {
        // Check if the file was uploaded
        if (!req.file) {
            return res.status(400).json({ message: 'No file uploaded' });
        }

        try {
            // Get the uploaded file details
            const file = req.file;
            const fileName = `${uuidv4()}-${file.originalname}`;
            const params = {
                Bucket: process.env.S3_BUCKET_NAME, // Your bucket name
                Key: fileName,
                Body: file.buffer,
                ContentType: file.mimetype,
                //ACL: 'public-read', // Optional, set permissions
            };

            // Upload the file to S3
            const data = await s3.upload(params).promise();
            
            // Respond with the file URL
            res.status(200).json({ fileUrl: data.Location });
        } catch (error) {
            console.error('Error uploading file:', error);
            res.status(500).json({ message: 'Failed to upload file1',error:error });
        }
    }
);

export default PhpRoutes;
