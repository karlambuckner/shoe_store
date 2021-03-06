require("spec_helper")

describe(Brand) do
  it("validates presence of name less than 100 characters") do
    brand = Brand.new({:brand_name => ""})
    expect(brand.save()).to(eq(false))
  end

  it("validates uniqueness of brand names") do
    brand1 = Brand.create({:brand_name => "New Balance", :price => nil})
    brand2 = Brand.create({:brand_name => "New Balance", :price => nil})
    expect(brand2.save()).to(eq(false))
  end

describe ('#capitalize_brand_name') do
    it("capitalizes the first letter of each word in the brand name") do
      brand = Brand.create({:brand_name => "new balance", :price => nil})
      expect(brand.brand_name()).to(eq("New Balance"))
    end
  end
end
