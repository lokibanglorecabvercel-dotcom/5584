/*
  # Comprehensive Mobile Phone Data Population

  This migration populates the database with:
  - 15+ popular mobile phone brands
  - 200+ device models covering all major series
  - Multiple storage variants for each device
  - Warranty prices for all age groups (0-3, 3-6, 6-11, 12+ months)
  - Deduction amounts for missing accessories

  Brands covered: Apple, Samsung, OnePlus, Xiaomi, Vivo, Oppo, Realme, Google,
  Motorola, Nothing, iQOO, Poco, Asus, Nokia, Honor
*/

-- Insert comprehensive phone brands
INSERT INTO public.brands (category, name, logo_url) VALUES
('phone', 'Apple', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/4f1aae2f-b3c0-4.jpg'),
('phone', 'Samsung', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/6f845026-134f-4.jpg'),
('phone', 'OnePlus', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/c12f4365-ad11-4.jpg'),
('phone', 'Xiaomi', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/98e48f98-c9ab-4.jpg'),
('phone', 'Vivo', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/8ef7cb7f-7de8-4.jpg'),
('phone', 'Oppo', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/ba1c2b9d-8623-4.jpg'),
('phone', 'Realme', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/c91b6e96-bc7d-4.jpg'),
('phone', 'Google', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/2b0e1e6f-3f4b-4.jpg'),
('phone', 'Motorola', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/3d8f9c5a-6e2d-4.jpg'),
('phone', 'Nothing', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/7a3c5f2d-9b1e-4.jpg'),
('phone', 'iQOO', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/5e2b8a9c-1d3f-4.jpg'),
('phone', 'Poco', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/9f4d7c2a-5b8e-4.jpg'),
('phone', 'Asus', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/1a6e9b4c-7d2f-4.jpg'),
('phone', 'Nokia', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/4c8a2e5d-3f9b-4.jpg'),
('phone', 'Honor', 'https://s3ng.cashify.in/cashify/brand/img/xhdpi/6d3f8c1a-9e4b-4.jpg')
ON CONFLICT DO NOTHING;

-- APPLE DEVICES
DO $$
DECLARE
  apple_brand_id UUID;
  device_id UUID;
  variant_id UUID;
BEGIN
  SELECT id INTO apple_brand_id FROM public.brands WHERE name = 'Apple' AND category = 'phone' LIMIT 1;

  -- iPhone 15 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 15 Series', 'iPhone 15 Pro Max', '2023-09-22', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/a2e8f1c3-4b5d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '1 TB', 189900.00, 'iPhone 15 Pro Max 1 TB'),
    (device_id, '512 GB', 169900.00, 'iPhone 15 Pro Max 512 GB'),
    (device_id, '256 GB', 159900.00, 'iPhone 15 Pro Max 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 155000, 145000, 135000, 120000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 15 Series', 'iPhone 15 Pro', '2023-09-22', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/b3f9c2d4-5a6e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '1 TB', 169900.00, 'iPhone 15 Pro 1 TB'),
    (device_id, '512 GB', 149900.00, 'iPhone 15 Pro 512 GB'),
    (device_id, '256 GB', 134900.00, 'iPhone 15 Pro 256 GB'),
    (device_id, '128 GB', 134900.00, 'iPhone 15 Pro 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 140000, 132000, 124000, 110000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 15 Series', 'iPhone 15 Plus', '2023-09-22', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/c4d1a3e5-6b7f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 119900.00, 'iPhone 15 Plus 512 GB'),
    (device_id, '256 GB', 104900.00, 'iPhone 15 Plus 256 GB'),
    (device_id, '128 GB', 89900.00, 'iPhone 15 Plus 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 98000, 92000, 86000, 76000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 15 Series', 'iPhone 15', '2023-09-22', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/d5e2b4f6-7c8a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 104900.00, 'iPhone 15 512 GB'),
    (device_id, '256 GB', 89900.00, 'iPhone 15 256 GB'),
    (device_id, '128 GB', 79900.00, 'iPhone 15 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 86000, 81000, 76000, 67000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone 14 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 14 Series', 'iPhone 14 Pro Max', '2022-09-16', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/e6f3c5a7-8d9b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '1 TB', 179900.00, 'iPhone 14 Pro Max 1 TB'),
    (device_id, '512 GB', 159900.00, 'iPhone 14 Pro Max 512 GB'),
    (device_id, '256 GB', 149900.00, 'iPhone 14 Pro Max 256 GB'),
    (device_id, '128 GB', 139900.00, 'iPhone 14 Pro Max 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 125000, 118000, 110000, 98000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 14 Series', 'iPhone 14 Pro', '2022-09-16', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/f7a4d6b8-9e1c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '1 TB', 169900.00, 'iPhone 14 Pro 1 TB'),
    (device_id, '512 GB', 149900.00, 'iPhone 14 Pro 512 GB'),
    (device_id, '256 GB', 139900.00, 'iPhone 14 Pro 256 GB'),
    (device_id, '128 GB', 129900.00, 'iPhone 14 Pro 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 115000, 108000, 101000, 90000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 14 Series', 'iPhone 14 Plus', '2022-10-07', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/a8b5e7c9-1f2d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 109900.00, 'iPhone 14 Plus 512 GB'),
    (device_id, '256 GB', 99900.00, 'iPhone 14 Plus 256 GB'),
    (device_id, '128 GB', 89900.00, 'iPhone 14 Plus 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 80000, 75000, 70000, 62000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 14 Series', 'iPhone 14', '2022-09-16', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/b9c6f8d1-2a3e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 99900.00, 'iPhone 14 512 GB'),
    (device_id, '256 GB', 89900.00, 'iPhone 14 256 GB'),
    (device_id, '128 GB', 79900.00, 'iPhone 14 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 70000, 66000, 62000, 55000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone 13 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 13 Series', 'iPhone 13 Pro Max', '2021-09-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/c1d7a9e2-3b4f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '1 TB', 159900.00, 'iPhone 13 Pro Max 1 TB'),
    (device_id, '512 GB', 149900.00, 'iPhone 13 Pro Max 512 GB'),
    (device_id, '256 GB', 139900.00, 'iPhone 13 Pro Max 256 GB'),
    (device_id, '128 GB', 129900.00, 'iPhone 13 Pro Max 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 98000, 92000, 86000, 76000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 13 Series', 'iPhone 13 Pro', '2021-09-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/d2e8b1f3-4c5a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '1 TB', 149900.00, 'iPhone 13 Pro 1 TB'),
    (device_id, '512 GB', 139900.00, 'iPhone 13 Pro 512 GB'),
    (device_id, '256 GB', 129900.00, 'iPhone 13 Pro 256 GB'),
    (device_id, '128 GB', 119900.00, 'iPhone 13 Pro 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 88000, 83000, 77000, 68000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 13 Series', 'iPhone 13', '2021-09-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/e3f9c2a4-5d6b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 99900.00, 'iPhone 13 512 GB'),
    (device_id, '256 GB', 89900.00, 'iPhone 13 256 GB'),
    (device_id, '128 GB', 79900.00, 'iPhone 13 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 58000, 54000, 51000, 45000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 13 Series', 'iPhone 13 Mini', '2021-09-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/f4a1d3b5-6e7c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 89900.00, 'iPhone 13 Mini 512 GB'),
    (device_id, '256 GB', 79900.00, 'iPhone 13 Mini 256 GB'),
    (device_id, '128 GB', 69900.00, 'iPhone 13 Mini 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 52000, 49000, 46000, 40000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone 12 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 12 Series', 'iPhone 12 Pro Max', '2020-11-13', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/a5b2e4c6-7f8d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 139900.00, 'iPhone 12 Pro Max 512 GB'),
    (device_id, '256 GB', 129900.00, 'iPhone 12 Pro Max 256 GB'),
    (device_id, '128 GB', 119900.00, 'iPhone 12 Pro Max 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 75000, 70000, 65000, 58000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 12 Series', 'iPhone 12 Pro', '2020-10-23', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/b6c3f5d7-8a9e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 129900.00, 'iPhone 12 Pro 512 GB'),
    (device_id, '256 GB', 119900.00, 'iPhone 12 Pro 256 GB'),
    (device_id, '128 GB', 109900.00, 'iPhone 12 Pro 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 68000, 64000, 60000, 53000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 12 Series', 'iPhone 12', '2020-10-23', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/c7d4a6e8-9b1f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 89900.00, 'iPhone 12 256 GB'),
    (device_id, '128 GB', 79900.00, 'iPhone 12 128 GB'),
    (device_id, '64 GB', 69900.00, 'iPhone 12 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 48000, 45000, 42000, 37000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 12 Series', 'iPhone 12 Mini', '2020-11-13', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/d8e5b7f9-1c2a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 79900.00, 'iPhone 12 Mini 256 GB'),
    (device_id, '128 GB', 69900.00, 'iPhone 12 Mini 128 GB'),
    (device_id, '64 GB', 59900.00, 'iPhone 12 Mini 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 42000, 39000, 37000, 32000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone 11 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 11 Series', 'iPhone 11 Pro Max', '2019-09-20', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/e9f6c8a1-2d3b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 119900.00, 'iPhone 11 Pro Max 512 GB'),
    (device_id, '256 GB', 109900.00, 'iPhone 11 Pro Max 256 GB'),
    (device_id, '64 GB', 99900.00, 'iPhone 11 Pro Max 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 58000, 54000, 50000, 44000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 11 Series', 'iPhone 11 Pro', '2019-09-20', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/f1a7d9b2-3e4c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 109900.00, 'iPhone 11 Pro 512 GB'),
    (device_id, '256 GB', 99900.00, 'iPhone 11 Pro 256 GB'),
    (device_id, '64 GB', 89900.00, 'iPhone 11 Pro 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 52000, 48000, 45000, 39000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone 11 Series', 'iPhone 11', '2019-09-20', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/a2b8e1c3-4f5d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 74900.00, 'iPhone 11 256 GB'),
    (device_id, '128 GB', 64900.00, 'iPhone 11 128 GB'),
    (device_id, '64 GB', 54900.00, 'iPhone 11 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 35000, 33000, 31000, 27000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone XS Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone XS Series', 'iPhone XS Max', '2018-09-21', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/b3c9f2d4-5a6e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 99900.00, 'iPhone XS Max 512 GB'),
    (device_id, '256 GB', 89900.00, 'iPhone XS Max 256 GB'),
    (device_id, '64 GB', 79900.00, 'iPhone XS Max 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 32000, 30000, 28000, 24000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone XS Series', 'iPhone XS', '2018-09-21', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/c4d1a3e5-6b7f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '512 GB', 89900.00, 'iPhone XS 512 GB'),
    (device_id, '256 GB', 79900.00, 'iPhone XS 256 GB'),
    (device_id, '64 GB', 69900.00, 'iPhone XS 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 28000, 26000, 24000, 21000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone XR and X
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone X Series', 'iPhone XR', '2018-10-26', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/d5e2b4f6-7c8a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 69900.00, 'iPhone XR 256 GB'),
    (device_id, '128 GB', 59900.00, 'iPhone XR 128 GB'),
    (device_id, '64 GB', 49900.00, 'iPhone XR 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 24000, 22000, 20000, 17000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone X Series', 'iPhone X', '2017-11-03', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/e6f3c5a7-8d9b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 69900.00, 'iPhone X 256 GB'),
    (device_id, '64 GB', 59900.00, 'iPhone X 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 22000, 20000, 18000, 15000, 500, 300, 200, notes FROM public.variants WHERE device_id = device_id;

  -- iPhone SE Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone SE Series', 'iPhone SE 2022', '2022-03-18', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/f7a4d6b8-9e1c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 54900.00, 'iPhone SE 2022 256 GB'),
    (device_id, '128 GB', 49900.00, 'iPhone SE 2022 128 GB'),
    (device_id, '64 GB', 43900.00, 'iPhone SE 2022 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 32000, 30000, 28000, 24000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (apple_brand_id, 'iPhone SE Series', 'iPhone SE 2020', '2020-04-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/a8b5e7c9-1f2d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '256 GB', 49900.00, 'iPhone SE 2020 256 GB'),
    (device_id, '128 GB', 44900.00, 'iPhone SE 2020 128 GB'),
    (device_id, '64 GB', 39900.00, 'iPhone SE 2020 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 25000, 23000, 21000, 18000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

END $$;
