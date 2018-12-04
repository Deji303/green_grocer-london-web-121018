
require 'pry'
def consolidate_cart(cart)
  # code here
  cart_hash = {}
  cart.each do |object|
     count = cart.count(object)
     object.each do |key,value|
      cart_hash[key] = value
      cart_hash[key][:count] = count
    end
  end
  cart_hash
end

def apply_coupons(cart, coupons)
  # code here
  new_count = cart[:count]
  cart.each do |key,value|
    key == coupons[:item] ? new_count = value[:count] - coupons[:num] : nil 
    cart[key][:count] = new_count
    cart["#{key} W/COUPON"] = {
      :price => coupons[:cost],
      :clearance => cart[key][:clearance],
      :count => 1 
    }
   
  end
   
  cart 
end

def apply_clearance(cart)
  # code here
  binding.pry 
end

def checkout(cart, coupons)
  # code here
end
