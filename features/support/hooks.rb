Before do
  $driver.start_driver          #run the driver before each test
end

After do
  sleep 3
  $driver.driver_quit           #close the driver after each test
end