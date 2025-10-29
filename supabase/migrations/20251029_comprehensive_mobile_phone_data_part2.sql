/*
  # Comprehensive Mobile Phone Data - Part 2

  Samsung, OnePlus, Xiaomi, and other brands
*/

-- SAMSUNG DEVICES
DO $$
DECLARE
  samsung_brand_id UUID;
  device_id UUID;
  variant_id UUID;
BEGIN
  SELECT id INTO samsung_brand_id FROM public.brands WHERE name = 'Samsung' AND category = 'phone' LIMIT 1;

  -- Galaxy S24 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S24 Series', 'Samsung Galaxy S24 Ultra', '2024-01-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/1a2b3c4d-5e6f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 134999.00, 'Samsung Galaxy S24 Ultra 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 124999.00, 'Samsung Galaxy S24 Ultra 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 112000, 105000, 98000, 86000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S24 Series', 'Samsung Galaxy S24 Plus', '2024-01-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/2b3c4d5e-6f7a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 109999.00, 'Samsung Galaxy S24 Plus 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 99999.00, 'Samsung Galaxy S24 Plus 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 91000, 85000, 79000, 70000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S24 Series', 'Samsung Galaxy S24', '2024-01-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/3c4d5e6f-7a8b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 89999.00, 'Samsung Galaxy S24 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 79999.00, 'Samsung Galaxy S24 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 75000, 70000, 65000, 57000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy S23 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S23 Series', 'Samsung Galaxy S23 Ultra', '2023-02-17', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/4d5e6f7a-8b9c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 134999.00, 'Samsung Galaxy S23 Ultra 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 124999.00, 'Samsung Galaxy S23 Ultra 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 96000, 90000, 84000, 74000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S23 Series', 'Samsung Galaxy S23 Plus', '2023-02-17', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/5e6f7a8b-9c1d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 94999.00, 'Samsung Galaxy S23 Plus 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 84999.00, 'Samsung Galaxy S23 Plus 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 75000, 70000, 65000, 57000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S23 Series', 'Samsung Galaxy S23', '2023-02-17', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/6f7a8b9c-1d2e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 84999.00, 'Samsung Galaxy S23 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 74999.00, 'Samsung Galaxy S23 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 62000, 58000, 54000, 47000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S23 Series', 'Samsung Galaxy S23 FE', '2023-10-04', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/7a8b9c1d-2e3f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 59999.00, 'Samsung Galaxy S23 FE 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 49999.00, 'Samsung Galaxy S23 FE 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 49000, 46000, 43000, 38000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy S22 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S22 Series', 'Samsung Galaxy S22 Ultra', '2022-02-25', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/8b9c1d2e-3f4a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 124999.00, 'Samsung Galaxy S22 Ultra 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 109999.00, 'Samsung Galaxy S22 Ultra 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 72000, 67000, 62000, 55000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S22 Series', 'Samsung Galaxy S22 Plus', '2022-02-25', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/9c1d2e3f-4a5b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 89999.00, 'Samsung Galaxy S22 Plus 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 79999.00, 'Samsung Galaxy S22 Plus 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 58000, 54000, 50000, 44000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S22 Series', 'Samsung Galaxy S22', '2022-02-25', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/1d2e3f4a-5b6c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 79999.00, 'Samsung Galaxy S22 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 69999.00, 'Samsung Galaxy S22 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 49000, 46000, 43000, 38000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy S21 Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S21 Series', 'Samsung Galaxy S21 Ultra', '2021-01-29', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/2e3f4a5b-6c7d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 109999.00, 'Samsung Galaxy S21 Ultra 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 99999.00, 'Samsung Galaxy S21 Ultra 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 58000, 54000, 50000, 44000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy S21 Series', 'Samsung Galaxy S21 FE', '2022-01-11', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/5b6c7d8e-9f1a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 54999.00, 'Samsung Galaxy S21 FE 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 44999.00, 'Samsung Galaxy S21 FE 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 38000, 35000, 33000, 29000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy Z Fold Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy Z Series', 'Samsung Galaxy Z Fold 5', '2023-08-11', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/6c7d8e9f-1a2b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 179999.00, 'Samsung Galaxy Z Fold 5 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 164999.00, 'Samsung Galaxy Z Fold 5 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 145000, 136000, 127000, 112000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy Z Series', 'Samsung Galaxy Z Flip 5', '2023-08-11', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/7d8e9f1a-2b3c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 512 GB', 109999.00, 'Samsung Galaxy Z Flip 5 8 GB / 512 GB'),
    (device_id, '8 GB / 256 GB', 99999.00, 'Samsung Galaxy Z Flip 5 8 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 88000, 82000, 77000, 68000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy Z Series', 'Samsung Galaxy Z Fold 4', '2022-08-26', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/8e9f1a2b-3c4d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '12 GB / 512 GB', 169999.00, 'Samsung Galaxy Z Fold 4 12 GB / 512 GB'),
    (device_id, '12 GB / 256 GB', 154999.00, 'Samsung Galaxy Z Fold 4 12 GB / 256 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 115000, 108000, 101000, 89000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy Z Series', 'Samsung Galaxy Z Flip 4', '2022-08-26', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/9f1a2b3c-4d5e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 89999.00, 'Samsung Galaxy Z Flip 4 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 79999.00, 'Samsung Galaxy Z Flip 4 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 62000, 58000, 54000, 47000, 400, 250, 150, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy A Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy A Series', 'Samsung Galaxy A54', '2023-03-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/1a2b3c4d-5e6f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 40999.00, 'Samsung Galaxy A54 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 38999.00, 'Samsung Galaxy A54 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 32000, 30000, 28000, 24000, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy A Series', 'Samsung Galaxy A34', '2023-03-24', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/2b3c4d5e-6f7a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 31999.00, 'Samsung Galaxy A34 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 29999.00, 'Samsung Galaxy A34 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 25000, 23000, 21000, 18000, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy A Series', 'Samsung Galaxy A24', '2023-04-28', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/3c4d5e6f-7a8b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 128 GB', 24999.00, 'Samsung Galaxy A24 8 GB / 128 GB'),
    (device_id, '6 GB / 128 GB', 22999.00, 'Samsung Galaxy A24 6 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 19000, 17000, 16000, 14000, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy A Series', 'Samsung Galaxy A14', '2023-03-03', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/4d5e6f7a-8b9c.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '6 GB / 128 GB', 16999.00, 'Samsung Galaxy A14 6 GB / 128 GB'),
    (device_id, '4 GB / 64 GB', 14999.00, 'Samsung Galaxy A14 4 GB / 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 13000, 12000, 11000, 9500, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy A Series', 'Samsung Galaxy A05', '2023-09-19', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/bca6f7e5-183a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '4 GB / 128 GB', 12999.00, 'Samsung Galaxy A05 4 GB / 128 GB'),
    (device_id, '4 GB / 64 GB', 10999.00, 'Samsung Galaxy A05 4 GB / 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 9500, 8800, 8100, 7000, 200, 150, 75, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy M Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy M Series', 'Samsung Galaxy M34', '2023-07-15', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/5e6f7a8b-9c1d.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 128 GB', 20999.00, 'Samsung Galaxy M34 8 GB / 128 GB'),
    (device_id, '6 GB / 128 GB', 18999.00, 'Samsung Galaxy M34 6 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 17000, 16000, 15000, 13000, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy M Series', 'Samsung Galaxy M14', '2023-04-21', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/6f7a8b9c-1d2e.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '6 GB / 128 GB', 14999.00, 'Samsung Galaxy M14 6 GB / 128 GB'),
    (device_id, '4 GB / 128 GB', 12999.00, 'Samsung Galaxy M14 4 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 11500, 10700, 10000, 8700, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy M Series', 'Samsung Galaxy M30s', '2019-09-18', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/7a8b9c1d-2e3f.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '4 GB / 128 GB', 13999.00, 'Samsung Galaxy M30s 4 GB / 128 GB'),
    (device_id, '4 GB / 64 GB', 11999.00, 'Samsung Galaxy M30s 4 GB / 64 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 8500, 7900, 7300, 6400, 200, 150, 75, notes FROM public.variants WHERE device_id = device_id;

  -- Galaxy F Series
  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy F Series', 'Samsung Galaxy F54', '2023-06-06', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/8b9c1d2e-3f4a.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '8 GB / 256 GB', 29999.00, 'Samsung Galaxy F54 8 GB / 256 GB'),
    (device_id, '8 GB / 128 GB', 27999.00, 'Samsung Galaxy F54 8 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 24000, 22000, 20000, 18000, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

  INSERT INTO public.devices (brand_id, series, model_name, release_date, image_url)
  VALUES (samsung_brand_id, 'Galaxy F Series', 'Samsung Galaxy F14', '2023-03-30', 'https://s3ng.cashify.in/cashify/product/img/xhdpi/9c1d2e3f-4a5b.jpg?w=320')
  RETURNING id INTO device_id;

  INSERT INTO public.variants (device_id, storage_text, base_price, notes)
  VALUES
    (device_id, '6 GB / 128 GB', 15999.00, 'Samsung Galaxy F14 6 GB / 128 GB'),
    (device_id, '4 GB / 128 GB', 13999.00, 'Samsung Galaxy F14 4 GB / 128 GB');

  INSERT INTO public.warranty_prices (variant_id, price_0_3_months, price_3_6_months, price_6_11_months, price_11_plus_months, charger_deduction_amount, box_deduction_amount, bill_deduction_amount, notes)
  SELECT id, 12000, 11000, 10000, 8800, 300, 200, 100, notes FROM public.variants WHERE device_id = device_id;

END $$;
