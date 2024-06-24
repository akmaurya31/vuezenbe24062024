import CouponServicesObj from "../../services/user/CouponServices.js";

class CouponController {
  async getAvailableCoupons(req, res) {
    let { category, product, variant, price, country } = req.query;
    if (!category) {
      category = 0;
    }
    if (!product) {
      product = 0;
    }
    if (!country) {
      country = "IN";
    }
    if (!variant) {
      variant = 0;
    }
    let obj = {
      category,
      product,
      variant,
      price,
      country,
    };
    CouponServicesObj.getAvailableCoupons(obj, req, res);
  }
  async getGetBuyCouponsOnly(req, res) {
    let { country } = req.query;
    if (!country) {
      country = "IN";
    }
    let obj = {
      country,
    };
    CouponServicesObj.getBuyGetCoupons(obj, res);
  }
  async checkPromoCode(req, res) {
    let { category, product, variant, price, country, promoCode } = req.query;
    if (!category) {
      category = 0;
    }
    if (!product) {
      product = 0;
    }
    if (!country) {
      country = "IN";
    }
    if (!variant) {
      variant = 0;
    }
    if (promoCode == undefined || promoCode == null) {
      return res
        .status(400)
        .json({ success: false, message: "Promo code is required" });
    }
    let obj = {
      category,
      product,
      variant,
      price,
      country,
      promoCode,
    };
    CouponServicesObj.checkPromoCode(obj, req, res);
  }
}
const CouponControllerObj = new CouponController();
export default CouponControllerObj;
