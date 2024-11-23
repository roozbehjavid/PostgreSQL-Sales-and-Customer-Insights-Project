-- The trigger ensures that the last_updated column in the products table is automatically updated with the current timestamp whenever a row is modified

CREATE OR REPLACE FUNCTION log_product_update()
RETURNS TRIGGER AS $$
BEGIN
    -- Update the last_updated column to the current timestamp
    NEW.last_updated := NOW();
    
    -- Return the modified row
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER log_update
BEFORE UPDATE ON products
FOR EACH ROW
EXECUTE FUNCTION log_product_update();
