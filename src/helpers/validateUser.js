import Joi from "joi";
import jwt from "jsonwebtoken";
import { environmentVars } from "../config/environmentVar.js";
import { phone } from "phone";

// const phonePattern = /^\+\d{3}-\d{10,15}$/; // Regex pattern for +xx-xxxxxxxxxx format
const phonePattern = /^\+\d{1,4}-\d{10,16}$/; // Regex pattern for +xx-xxxxxxxxxx format

export const registerSchema = Joi.object({
  name: Joi.string()
    .min(3)
    .max(25)
    .trim()
    .required()
    .pattern(/^[a-zA-Z\s]+$/)
    .label("Full Name"),
  email: Joi.string()
    .trim()
    .email({ tlds: { allow: false } })
    .required()
    .label("Email"),

  // phone: Joi.string()
  //   .trim()
  //   .required()
  //   .min(10)
  //   .max(17)
  //   .messages({
  //     "any.required": "Invalid Phone number",
  //   })
  //   // .custom((value, helpers) => {
  //   //   const phoneNumberPattern = /^\+(?:[0-9] ?){6,14}[0-9]$/;
  //   //   if (!phoneNumberPattern.test(value)) {
  //   //     return helpers.error("any.invalid");
  //   //   }
  //   //   return value;
  //   // }, "Phone Number Validation")
  //   .label("Phone Number"),
  phone: Joi.string()
    .trim()
    .required()
    .regex(phonePattern)
    .messages({
      "string.pattern.base":
        "Invalid Phone number format. It should be in the format +xx-xxxxxxxxxx",
      "any.required": "Phone number is required",
      "string.empty": "Phone number must not be empty",
    })
    .label("Phone Number"),

  country: Joi.string().trim().required("Selecting Country Code is Required"),
  captchaValue: Joi.string().min(1).required().label("Captcha"),

});

export const registerAdminSchema = Joi.object({
  name: Joi.string().min(3).max(25).trim().required().label("Full Name"),
  email: Joi.string()
    .trim()
    .email({ tlds: { allow: false } })
    .required()
    .label("Email"),
  role_id: Joi.string().required(),
  phone: Joi.string()
    // .trim()
    // .required()
    .regex(phonePattern)
    .messages({
      "string.pattern.base":
        "Invalid Phone number format. It should be in the format +xx-xxxxxxxxxx",
      "any.required": "Phone number is required",
      "string.empty": "Phone number must not be empty",
    })
    .label("Phone Number"),

  // phone: Joi.string()
  //   .trim()
  //   .required()
  //   .min(10)
  //   .label("Phone Number"),
  country: Joi.string().trim().required("Selecting Country Code is Required"),
});

export const forgotPasswordSchema = Joi.object({
  email: Joi.string()
    .trim()
    .email({ tlds: { allow: false } })
    .required()
    .label("Email"),
  captchaValue: Joi.string().min(1).required().label("Captcha"),
  
});

export const resetPasswordSchema = Joi.object({
  otp_code:Joi.string().max(4).required().label("otp_code"),
  password: Joi.string()
    .min(6)
    .regex(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$/)
    .required()
    .label("Password")
    .messages({
      "string.pattern.base":
        "Password must contain at least one digit, one special character, one lowercase letter, and one uppercase letter.",
    }),
});
export const otpSchema = Joi.object({
  email: Joi.string()
    .trim()
    .email({ tlds: { allow: false } })
    .required()
    .label("Email"),
  otp_code: Joi.string()
    .trim()
    .length(4)
    .regex(/^\d+$/) // Ensure it contains only digits
    .required()
    .label("OTP Code"),
});

export const loginSchema = Joi.object({
  email: Joi.string()
    .trim()
    .email({ tlds: { allow: false } })
    .required()
    .label("Email"),
  password: Joi.string()
    .min(6)
    .trim()
    .max(80)
    // .regex(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$/)
    .required()
    .label("Password"),
  captchaValue: Joi.string().min(1).required().label("Captcha"),

});
export const loginWithOtpSchema = Joi.object({
  email: Joi.string()
    .trim()
    .email({ tlds: { allow: false } })
    .required()
    .label("Email"),
  otp_code: Joi.number()
    .min(6)
    // .regex(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$/)
    .required()
    .label("Otp"),
});

export const statusChangeSchema = Joi.object({
  id: Joi.number().required().label("id"),
  status: Joi.string().required().valid("active", "inactive").label("status"),
});
export const editAdminSchema = Joi.object({
  id: Joi.number().required().label("id"),
  name: Joi.string().min(3).required().label("name"),
});

export const updateUserSchema = Joi.object({
  name: Joi.string().min(3).max(25).allow("", null).trim().label("Full Name"),

  // phone: Joi.string()
  //   .custom((value, helpers) => {
  //     const phoneNumber = phone(value);
  //     if (!phoneNumber.isValid) {
  //       return helpers.message(
  //         "Please provide a valid phone number, including the country code if applicable."
  //       );
  //     }
  //     return value;
  //   })
  //   .allow(null, "")
  //   .label("Phone Number"),
  phone: Joi.string()
    // .trim()
    // .required()
    .regex(phonePattern)
    .messages({
      "string.pattern.base":
        "Invalid Phone number format. It should be in the format +xx-xxxxxxxxxx",
      "any.required": "Phone number is required",
      "string.empty": "Phone number must not be empty",
    })
    .label("Phone Number"),

  password: Joi.string()
    .min(6).max(40)
    .allow(null, "")
    .regex(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$/)
    .label("Password")
    .messages({
      "string.pattern.base":
        "Password must contain at least one digit, one special character, one lowercase letter, and one uppercase letter.",
    }),
});
export const updateUserNameSchema = Joi.object({
  name: Joi.string().min(3).max(40).trim().required().label("Full Name"),
});

export const generateAccessToken = (payload) => {
  let token = jwt.sign(payload, environmentVars.jwtSecret);
  return token;
};

export const generateAccessTokenForAdmin = (payload) => {
  let token = jwt.sign(payload, environmentVars.jwtSecretAdmin);
  return token;
};
