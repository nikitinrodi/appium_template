require "appium_lib"                  #appium library
require "pry"                         #debugger


def caps                            #desired capabilities
  { caps: {
      deviceName: "iPhone 8 Plus",    #specify device, The kind of mobile device or emulator to use
      deviceOrientation: 'portrait',
      automationName:'XCUITest',      #Which automation engine to use
      platformName: "iOS",            #for ios apps
      platformVersion: "11.1",          #specify ios version for simulator
      app: (File.join(File.dirname(__FILE__), "PLSAppQA.app")),             #app path
      bundleId: "com.pls247.mobile",          #get this in xcode - ask your developers
      newCommandTimeout: "3600",              #default timeout time, you can decrease value if needed
      locationServicesEnabled: 'true',        #location services turned on by default
      autoAcceptAlerts: 'true'                #auto accept alerts (usually it hits ok)
  },
    appium_lib: {
        wait: 30                                #waiting time before failing scenario
    }}
end

Appium::Driver.new(caps)              #define driver and desired capabilities
Appium.promote_appium_methods Object #If you call Appium.promote_appium_methods, you can call find_element directly.



#here is more info abouts caps https://github.com/appium/appium/blob/master/docs/en/writing-running-appium/caps.md