pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;


limited with bits_types_struct_timeval_h;

package libusb_1_0_libusb_h is

   --  unsupported macro: LIBUSB_DEPRECATED_FOR(f) __attribute__((deprecated("Use " #f " instead")))
   LIBUSB_API_VERSION : constant := 16#01000105#;  --  /usr/include/libusb-1.0/libusb.h:144
   --  unsupported macro: LIBUSBX_API_VERSION LIBUSB_API_VERSION
   --  unsupported macro: libusb_le16_to_cpu libusb_cpu_to_le16

   LIBUSB_DT_DEVICE_SIZE : constant := 18;  --  /usr/include/libusb-1.0/libusb.h:290
   LIBUSB_DT_CONFIG_SIZE : constant := 9;  --  /usr/include/libusb-1.0/libusb.h:291
   LIBUSB_DT_INTERFACE_SIZE : constant := 9;  --  /usr/include/libusb-1.0/libusb.h:292
   LIBUSB_DT_ENDPOINT_SIZE : constant := 7;  --  /usr/include/libusb-1.0/libusb.h:293
   LIBUSB_DT_ENDPOINT_AUDIO_SIZE : constant := 9;  --  /usr/include/libusb-1.0/libusb.h:294
   LIBUSB_DT_HUB_NONVAR_SIZE : constant := 7;  --  /usr/include/libusb-1.0/libusb.h:295
   LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE : constant := 6;  --  /usr/include/libusb-1.0/libusb.h:296
   LIBUSB_DT_BOS_SIZE : constant := 5;  --  /usr/include/libusb-1.0/libusb.h:297
   LIBUSB_DT_DEVICE_CAPABILITY_SIZE : constant := 3;  --  /usr/include/libusb-1.0/libusb.h:298

   LIBUSB_BT_USB_2_0_EXTENSION_SIZE : constant := 7;  --  /usr/include/libusb-1.0/libusb.h:301
   LIBUSB_BT_SS_USB_DEVICE_CAPABILITY_SIZE : constant := 10;  --  /usr/include/libusb-1.0/libusb.h:302
   LIBUSB_BT_CONTAINER_ID_SIZE : constant := 20;  --  /usr/include/libusb-1.0/libusb.h:303
   --  unsupported macro: LIBUSB_DT_BOS_MAX_SIZE ((LIBUSB_DT_BOS_SIZE) + (LIBUSB_BT_USB_2_0_EXTENSION_SIZE) + (LIBUSB_BT_SS_USB_DEVICE_CAPABILITY_SIZE) + (LIBUSB_BT_CONTAINER_ID_SIZE))

   LIBUSB_ENDPOINT_ADDRESS_MASK : constant := 16#0f#;  --  /usr/include/libusb-1.0/libusb.h:311
   LIBUSB_ENDPOINT_DIR_MASK : constant := 16#80#;  --  /usr/include/libusb-1.0/libusb.h:312

   LIBUSB_TRANSFER_TYPE_MASK : constant := 16#03#;  --  /usr/include/libusb-1.0/libusb.h:326

   LIBUSB_ISO_SYNC_TYPE_MASK : constant := 16#0C#;  --  /usr/include/libusb-1.0/libusb.h:433

   LIBUSB_ISO_USAGE_TYPE_MASK : constant := 16#30#;  --  /usr/include/libusb-1.0/libusb.h:454
   --  unsupported macro: LIBUSB_CONTROL_SETUP_SIZE (sizeof(struct libusb_control_setup))

   LIBUSB_ERROR_COUNT : constant := 14;  --  /usr/include/libusb-1.0/libusb.h:1102

   LIBUSB_HOTPLUG_MATCH_ANY : constant := -1;  --  /usr/include/libusb-1.0/libusb.h:1918

   function libusb_cpu_to_le16 (x : Interfaces.Unsigned_16) return Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:161
   pragma Import (C, libusb_cpu_to_le16, "libusb_cpu_to_le16");

   subtype libusb_class_code is unsigned;
   LIBUSB_CLASS_PER_INTERFACE : constant libusb_class_code := 0;
   LIBUSB_CLASS_AUDIO : constant libusb_class_code := 1;
   LIBUSB_CLASS_COMM : constant libusb_class_code := 2;
   LIBUSB_CLASS_HID : constant libusb_class_code := 3;
   LIBUSB_CLASS_PHYSICAL : constant libusb_class_code := 5;
   LIBUSB_CLASS_PRINTER : constant libusb_class_code := 7;
   LIBUSB_CLASS_PTP : constant libusb_class_code := 6;
   LIBUSB_CLASS_IMAGE : constant libusb_class_code := 6;
   LIBUSB_CLASS_MASS_STORAGE : constant libusb_class_code := 8;
   LIBUSB_CLASS_HUB : constant libusb_class_code := 9;
   LIBUSB_CLASS_DATA : constant libusb_class_code := 10;
   LIBUSB_CLASS_SMART_CARD : constant libusb_class_code := 11;
   LIBUSB_CLASS_CONTENT_SECURITY : constant libusb_class_code := 13;
   LIBUSB_CLASS_VIDEO : constant libusb_class_code := 14;
   LIBUSB_CLASS_PERSONAL_HEALTHCARE : constant libusb_class_code := 15;
   LIBUSB_CLASS_DIAGNOSTIC_DEVICE : constant libusb_class_code := 220;
   LIBUSB_CLASS_WIRELESS : constant libusb_class_code := 224;
   LIBUSB_CLASS_APPLICATION : constant libusb_class_code := 254;
   LIBUSB_CLASS_VENDOR_SPEC : constant libusb_class_code := 255;  -- /usr/include/libusb-1.0/libusb.h:186

   subtype libusb_descriptor_type is unsigned;
   LIBUSB_DT_DEVICE : constant libusb_descriptor_type := 1;
   LIBUSB_DT_CONFIG : constant libusb_descriptor_type := 2;
   LIBUSB_DT_STRING : constant libusb_descriptor_type := 3;
   LIBUSB_DT_INTERFACE : constant libusb_descriptor_type := 4;
   LIBUSB_DT_ENDPOINT : constant libusb_descriptor_type := 5;
   LIBUSB_DT_BOS : constant libusb_descriptor_type := 15;
   LIBUSB_DT_DEVICE_CAPABILITY : constant libusb_descriptor_type := 16;
   LIBUSB_DT_HID : constant libusb_descriptor_type := 33;
   LIBUSB_DT_REPORT : constant libusb_descriptor_type := 34;
   LIBUSB_DT_PHYSICAL : constant libusb_descriptor_type := 35;
   LIBUSB_DT_HUB : constant libusb_descriptor_type := 41;
   LIBUSB_DT_SUPERSPEED_HUB : constant libusb_descriptor_type := 42;
   LIBUSB_DT_SS_ENDPOINT_COMPANION : constant libusb_descriptor_type := 48;  -- /usr/include/libusb-1.0/libusb.h:248

   subtype libusb_endpoint_direction is unsigned;
   LIBUSB_ENDPOINT_IN : constant libusb_endpoint_direction := 128;
   LIBUSB_ENDPOINT_OUT : constant libusb_endpoint_direction := 0;  -- /usr/include/libusb-1.0/libusb.h:318

   type libusb_transfer_type is 
     (LIBUSB_TRANSFER_TYPE_CONTROL,
      LIBUSB_TRANSFER_TYPE_ISOCHRONOUS,
      LIBUSB_TRANSFER_TYPE_BULK,
      LIBUSB_TRANSFER_TYPE_INTERRUPT,
      LIBUSB_TRANSFER_TYPE_BULK_STREAM);
   pragma Convention (C, libusb_transfer_type);  -- /usr/include/libusb-1.0/libusb.h:332

   subtype libusb_standard_request is unsigned;
   LIBUSB_REQUEST_GET_STATUS : constant libusb_standard_request := 0;
   LIBUSB_REQUEST_CLEAR_FEATURE : constant libusb_standard_request := 1;
   LIBUSB_REQUEST_SET_FEATURE : constant libusb_standard_request := 3;
   LIBUSB_REQUEST_SET_ADDRESS : constant libusb_standard_request := 5;
   LIBUSB_REQUEST_GET_DESCRIPTOR : constant libusb_standard_request := 6;
   LIBUSB_REQUEST_SET_DESCRIPTOR : constant libusb_standard_request := 7;
   LIBUSB_REQUEST_GET_CONFIGURATION : constant libusb_standard_request := 8;
   LIBUSB_REQUEST_SET_CONFIGURATION : constant libusb_standard_request := 9;
   LIBUSB_REQUEST_GET_INTERFACE : constant libusb_standard_request := 10;
   LIBUSB_REQUEST_SET_INTERFACE : constant libusb_standard_request := 11;
   LIBUSB_REQUEST_SYNCH_FRAME : constant libusb_standard_request := 12;
   LIBUSB_REQUEST_SET_SEL : constant libusb_standard_request := 48;
   LIBUSB_SET_ISOCH_DELAY : constant libusb_standard_request := 49;  -- /usr/include/libusb-1.0/libusb.h:351

   subtype libusb_request_type is unsigned;
   LIBUSB_REQUEST_TYPE_STANDARD : constant libusb_request_type := 0;
   LIBUSB_REQUEST_TYPE_CLASS : constant libusb_request_type := 32;
   LIBUSB_REQUEST_TYPE_VENDOR : constant libusb_request_type := 64;
   LIBUSB_REQUEST_TYPE_RESERVED : constant libusb_request_type := 96;  -- /usr/include/libusb-1.0/libusb.h:401

   type libusb_request_recipient is 
     (LIBUSB_RECIPIENT_DEVICE,
      LIBUSB_RECIPIENT_INTERFACE,
      LIBUSB_RECIPIENT_ENDPOINT,
      LIBUSB_RECIPIENT_OTHER);
   pragma Convention (C, libusb_request_recipient);  -- /usr/include/libusb-1.0/libusb.h:419

   type libusb_iso_sync_type is 
     (LIBUSB_ISO_SYNC_TYPE_NONE,
      LIBUSB_ISO_SYNC_TYPE_ASYNC,
      LIBUSB_ISO_SYNC_TYPE_ADAPTIVE,
      LIBUSB_ISO_SYNC_TYPE_SYNC);
   pragma Convention (C, libusb_iso_sync_type);  -- /usr/include/libusb-1.0/libusb.h:440

   type libusb_iso_usage_type is 
     (LIBUSB_ISO_USAGE_TYPE_DATA,
      LIBUSB_ISO_USAGE_TYPE_FEEDBACK,
      LIBUSB_ISO_USAGE_TYPE_IMPLICIT);
   pragma Convention (C, libusb_iso_usage_type);  -- /usr/include/libusb-1.0/libusb.h:461

   type libusb_device_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:479
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:484
      bcdUSB : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:488
      bDeviceClass : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:491
      bDeviceSubClass : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:495
      bDeviceProtocol : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:499
      bMaxPacketSize0 : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:502
      idVendor : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:505
      idProduct : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:508
      bcdDevice : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:511
      iManufacturer : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:514
      iProduct : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:517
      iSerialNumber : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:520
      bNumConfigurations : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:523
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_device_descriptor);  -- /usr/include/libusb-1.0/libusb.h:477

   type libusb_endpoint_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:533
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:538
      bEndpointAddress : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:544
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:553
      wMaxPacketSize : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:556
      bInterval : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:559
      bRefresh : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:563
      bSynchAddress : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:566
      extra : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:570
      extra_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:573
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_endpoint_descriptor);  -- /usr/include/libusb-1.0/libusb.h:531

   type libusb_interface_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:583
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:588
      bInterfaceNumber : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:591
      bAlternateSetting : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:594
      bNumEndpoints : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:598
      bInterfaceClass : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:601
      bInterfaceSubClass : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:605
      bInterfaceProtocol : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:609
      iInterface : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:612
      endpoint : access constant libusb_endpoint_descriptor;  -- /usr/include/libusb-1.0/libusb.h:616
      extra : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:620
      extra_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:623
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_interface_descriptor);  -- /usr/include/libusb-1.0/libusb.h:581

   type libusb_interface is record
      altsetting : access constant libusb_interface_descriptor;  -- /usr/include/libusb-1.0/libusb.h:632
      num_altsetting : aliased int;  -- /usr/include/libusb-1.0/libusb.h:635
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_interface);  -- /usr/include/libusb-1.0/libusb.h:629

   type libusb_config_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:645
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:650
      wTotalLength : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:653
      bNumInterfaces : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:656
      bConfigurationValue : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:659
      iConfiguration : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:662
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:665
      MaxPower : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:671
      c_interface : access constant libusb_interface;  -- /usr/include/libusb-1.0/libusb.h:675
      extra : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:679
      extra_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:682
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_config_descriptor);  -- /usr/include/libusb-1.0/libusb.h:643

   type libusb_ss_endpoint_companion_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:694
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:699
      bMaxBurst : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:704
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:710
      wBytesPerInterval : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:714
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_ss_endpoint_companion_descriptor);  -- /usr/include/libusb-1.0/libusb.h:691

   type libusb_bos_dev_capability_descriptor_dev_capability_data_array is array (0 .. -1) of aliased Interfaces.Unsigned_8;
   type libusb_bos_dev_capability_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:724
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:728
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:730
      dev_capability_data : aliased libusb_bos_dev_capability_descriptor_dev_capability_data_array;  -- /usr/include/libusb-1.0/libusb.h:736
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_bos_dev_capability_descriptor);  -- /usr/include/libusb-1.0/libusb.h:722

   type libusb_bos_descriptor_dev_capability_array is array (0 .. -1) of access libusb_bos_dev_capability_descriptor;
   type libusb_bos_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:748
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:753
      wTotalLength : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:756
      bNumDeviceCaps : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:760
      dev_capability : libusb_bos_descriptor_dev_capability_array;  -- /usr/include/libusb-1.0/libusb.h:767
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_bos_descriptor);  -- /usr/include/libusb-1.0/libusb.h:746

   type libusb_usb_2_0_extension_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:779
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:784
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:789
      bmAttributes : aliased Interfaces.Unsigned_32;  -- /usr/include/libusb-1.0/libusb.h:795
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_usb_2_0_extension_descriptor);  -- /usr/include/libusb-1.0/libusb.h:777

   type libusb_ss_usb_device_capability_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:805
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:810
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:815
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:821
      wSpeedSupported : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:825
      bFunctionalitySupport : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:831
      bU1DevExitLat : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:834
      bU2DevExitLat : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:837
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_ss_usb_device_capability_descriptor);  -- /usr/include/libusb-1.0/libusb.h:803

   type libusb_container_id_descriptor_ContainerID_array is array (0 .. 15) of aliased Interfaces.Unsigned_8;
   type libusb_container_id_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:847
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:852
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:857
      bReserved : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:860
      ContainerID : aliased libusb_container_id_descriptor_ContainerID_array;  -- /usr/include/libusb-1.0/libusb.h:863
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_container_id_descriptor);  -- /usr/include/libusb-1.0/libusb.h:845

   type libusb_control_setup is record
      bmRequestType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:874
      bRequest : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:881
      wValue : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:884
      wIndex : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:888
      wLength : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:891
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_control_setup);  -- /usr/include/libusb-1.0/libusb.h:868

   --  skipped empty struct libusb_context

   --  skipped empty struct libusb_device

   --  skipped empty struct libusb_device_handle

   type libusb_version is record
      major : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:907
      minor : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:910
      micro : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:913
      nano : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:916
      rc : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:919
      describe : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:922
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_version);  -- /usr/include/libusb-1.0/libusb.h:905

   type libusb_speed is 
     (LIBUSB_SPEED_UNKNOWN,
      LIBUSB_SPEED_LOW,
      LIBUSB_SPEED_FULL,
      LIBUSB_SPEED_HIGH,
      LIBUSB_SPEED_SUPER);
   pragma Convention (C, libusb_speed);  -- /usr/include/libusb-1.0/libusb.h:975

   subtype libusb_supported_speed is unsigned;
   LIBUSB_LOW_SPEED_OPERATION : constant libusb_supported_speed := 1;
   LIBUSB_FULL_SPEED_OPERATION : constant libusb_supported_speed := 2;
   LIBUSB_HIGH_SPEED_OPERATION : constant libusb_supported_speed := 4;
   LIBUSB_SUPER_SPEED_OPERATION : constant libusb_supported_speed := 8;  -- /usr/include/libusb-1.0/libusb.h:996

   subtype libusb_usb_2_0_extension_attributes is unsigned;
   LIBUSB_BM_LPM_SUPPORT : constant libusb_usb_2_0_extension_attributes := 2;  -- /usr/include/libusb-1.0/libusb.h:1015

   subtype libusb_ss_usb_device_capability_attributes is unsigned;
   LIBUSB_BM_LTM_SUPPORT : constant libusb_ss_usb_device_capability_attributes := 2;  -- /usr/include/libusb-1.0/libusb.h:1025

   subtype libusb_bos_type is unsigned;
   LIBUSB_BT_WIRELESS_USB_DEVICE_CAPABILITY : constant libusb_bos_type := 1;
   LIBUSB_BT_USB_2_0_EXTENSION : constant libusb_bos_type := 2;
   LIBUSB_BT_SS_USB_DEVICE_CAPABILITY : constant libusb_bos_type := 3;
   LIBUSB_BT_CONTAINER_ID : constant libusb_bos_type := 4;  -- /usr/include/libusb-1.0/libusb.h:1033

   subtype libusb_error is int;
   LIBUSB_SUCCESS : constant libusb_error := 0;
   LIBUSB_ERROR_IO : constant libusb_error := -1;
   LIBUSB_ERROR_INVALID_PARAM : constant libusb_error := -2;
   LIBUSB_ERROR_ACCESS : constant libusb_error := -3;
   LIBUSB_ERROR_NO_DEVICE : constant libusb_error := -4;
   LIBUSB_ERROR_NOT_FOUND : constant libusb_error := -5;
   LIBUSB_ERROR_BUSY : constant libusb_error := -6;
   LIBUSB_ERROR_TIMEOUT : constant libusb_error := -7;
   LIBUSB_ERROR_OVERFLOW : constant libusb_error := -8;
   LIBUSB_ERROR_PIPE : constant libusb_error := -9;
   LIBUSB_ERROR_INTERRUPTED : constant libusb_error := -10;
   LIBUSB_ERROR_NO_MEM : constant libusb_error := -11;
   LIBUSB_ERROR_NOT_SUPPORTED : constant libusb_error := -12;
   LIBUSB_ERROR_OTHER : constant libusb_error := -99;  -- /usr/include/libusb-1.0/libusb.h:1054

   type libusb_transfer_status is 
     (LIBUSB_TRANSFER_COMPLETED,
      LIBUSB_TRANSFER_ERROR,
      LIBUSB_TRANSFER_TIMED_OUT,
      LIBUSB_TRANSFER_CANCELLED,
      LIBUSB_TRANSFER_STALL,
      LIBUSB_TRANSFER_NO_DEVICE,
      LIBUSB_TRANSFER_OVERFLOW);
   pragma Convention (C, libusb_transfer_status);  -- /usr/include/libusb-1.0/libusb.h:1106

   subtype libusb_transfer_flags is unsigned;
   LIBUSB_TRANSFER_SHORT_NOT_OK : constant libusb_transfer_flags := 1;
   LIBUSB_TRANSFER_FREE_BUFFER : constant libusb_transfer_flags := 2;
   LIBUSB_TRANSFER_FREE_TRANSFER : constant libusb_transfer_flags := 4;
   LIBUSB_TRANSFER_ADD_ZERO_PACKET : constant libusb_transfer_flags := 8;  -- /usr/include/libusb-1.0/libusb.h:1136

   type libusb_iso_packet_descriptor is record
      length : aliased unsigned;  -- /usr/include/libusb-1.0/libusb.h:1182
      actual_length : aliased unsigned;  -- /usr/include/libusb-1.0/libusb.h:1185
      status : aliased libusb_transfer_status;  -- /usr/include/libusb-1.0/libusb.h:1188
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_iso_packet_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1180

   type libusb_transfer_cb_fn is access procedure  (arg1 : System.Address);
   pragma Convention (C, libusb_transfer_cb_fn);  -- /usr/include/libusb-1.0/libusb.h:1202

   type libusb_transfer_iso_packet_desc_array is array (0 .. -1) of aliased libusb_iso_packet_descriptor;
   type libusb_transfer is record
      dev_handle : System.Address;  -- /usr/include/libusb-1.0/libusb.h:1212
      flags : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1215
      endpoint : aliased unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1218
      c_type : aliased unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1221
      timeout : aliased unsigned;  -- /usr/include/libusb-1.0/libusb.h:1225
      status : aliased libusb_transfer_status;  -- /usr/include/libusb-1.0/libusb.h:1234
      length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1237
      actual_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1242
      callback : libusb_transfer_cb_fn;  -- /usr/include/libusb-1.0/libusb.h:1246
      user_data : System.Address;  -- /usr/include/libusb-1.0/libusb.h:1249
      buffer : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1252
      num_iso_packets : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1256
      iso_packet_desc : aliased libusb_transfer_iso_packet_desc_array;  -- /usr/include/libusb-1.0/libusb.h:1263
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_transfer);  -- /usr/include/libusb-1.0/libusb.h:1210

   subtype libusb_capability is unsigned;
   LIBUSB_CAP_HAS_CAPABILITY : constant libusb_capability := 0;
   LIBUSB_CAP_HAS_HOTPLUG : constant libusb_capability := 1;
   LIBUSB_CAP_HAS_HID_ACCESS : constant libusb_capability := 256;
   LIBUSB_CAP_SUPPORTS_DETACH_KERNEL_DRIVER : constant libusb_capability := 257;  -- /usr/include/libusb-1.0/libusb.h:1273

   type libusb_log_level is 
     (LIBUSB_LOG_LEVEL_NONE,
      LIBUSB_LOG_LEVEL_ERROR,
      LIBUSB_LOG_LEVEL_WARNING,
      LIBUSB_LOG_LEVEL_INFO,
      LIBUSB_LOG_LEVEL_DEBUG);
   pragma Convention (C, libusb_log_level);  -- /usr/include/libusb-1.0/libusb.h:1298

   function libusb_init (ctx : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1306
   pragma Import (C, libusb_init, "libusb_init");

   procedure libusb_exit (ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1307
   pragma Import (C, libusb_exit, "libusb_exit");

   procedure libusb_set_debug (ctx : System.Address; level : int);  -- /usr/include/libusb-1.0/libusb.h:1308
   pragma Import (C, libusb_set_debug, "libusb_set_debug");

   function libusb_get_version return access constant libusb_version;  -- /usr/include/libusb-1.0/libusb.h:1309
   pragma Import (C, libusb_get_version, "libusb_get_version");

   function libusb_has_capability (capability : Interfaces.Unsigned_32) return int;  -- /usr/include/libusb-1.0/libusb.h:1310
   pragma Import (C, libusb_has_capability, "libusb_has_capability");

   function libusb_error_name (errcode : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:1311
   pragma Import (C, libusb_error_name, "libusb_error_name");

   function libusb_setlocale (locale : Interfaces.C.Strings.chars_ptr) return int;  -- /usr/include/libusb-1.0/libusb.h:1312
   pragma Import (C, libusb_setlocale, "libusb_setlocale");

   function libusb_strerror (errcode : libusb_error) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:1313
   pragma Import (C, libusb_strerror, "libusb_strerror");

   function libusb_get_device_list (ctx : System.Address; list : System.Address) return size_t;  -- /usr/include/libusb-1.0/libusb.h:1315
   pragma Import (C, libusb_get_device_list, "libusb_get_device_list");

   procedure libusb_free_device_list (list : System.Address; unref_devices : int);  -- /usr/include/libusb-1.0/libusb.h:1317
   pragma Import (C, libusb_free_device_list, "libusb_free_device_list");

   function libusb_ref_device (dev : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1319
   pragma Import (C, libusb_ref_device, "libusb_ref_device");

   procedure libusb_unref_device (dev : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1320
   pragma Import (C, libusb_unref_device, "libusb_unref_device");

   function libusb_get_configuration (dev : System.Address; config : access int) return int;  -- /usr/include/libusb-1.0/libusb.h:1322
   pragma Import (C, libusb_get_configuration, "libusb_get_configuration");

   function libusb_get_device_descriptor (dev : System.Address; desc : access libusb_device_descriptor) return int;  -- /usr/include/libusb-1.0/libusb.h:1324
   pragma Import (C, libusb_get_device_descriptor, "libusb_get_device_descriptor");

   function libusb_get_active_config_descriptor (dev : System.Address; config : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1326
   pragma Import (C, libusb_get_active_config_descriptor, "libusb_get_active_config_descriptor");

   function libusb_get_config_descriptor
     (dev : System.Address;
      config_index : Interfaces.Unsigned_8;
      config : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1328
   pragma Import (C, libusb_get_config_descriptor, "libusb_get_config_descriptor");

   function libusb_get_config_descriptor_by_value
     (dev : System.Address;
      bConfigurationValue : Interfaces.Unsigned_8;
      config : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1330
   pragma Import (C, libusb_get_config_descriptor_by_value, "libusb_get_config_descriptor_by_value");

   procedure libusb_free_config_descriptor (config : access libusb_config_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1332
   pragma Import (C, libusb_free_config_descriptor, "libusb_free_config_descriptor");

   function libusb_get_ss_endpoint_companion_descriptor
     (ctx : System.Address;
      endpoint : access constant libusb_endpoint_descriptor;
      ep_comp : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1334
   pragma Import (C, libusb_get_ss_endpoint_companion_descriptor, "libusb_get_ss_endpoint_companion_descriptor");

   procedure libusb_free_ss_endpoint_companion_descriptor (ep_comp : access libusb_ss_endpoint_companion_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1338
   pragma Import (C, libusb_free_ss_endpoint_companion_descriptor, "libusb_free_ss_endpoint_companion_descriptor");

   function libusb_get_bos_descriptor (dev_handle : System.Address; bos : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1340
   pragma Import (C, libusb_get_bos_descriptor, "libusb_get_bos_descriptor");

   procedure libusb_free_bos_descriptor (bos : access libusb_bos_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1342
   pragma Import (C, libusb_free_bos_descriptor, "libusb_free_bos_descriptor");

   function libusb_get_usb_2_0_extension_descriptor
     (ctx : System.Address;
      dev_cap : access libusb_bos_dev_capability_descriptor;
      usb_2_0_extension : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1343
   pragma Import (C, libusb_get_usb_2_0_extension_descriptor, "libusb_get_usb_2_0_extension_descriptor");

   procedure libusb_free_usb_2_0_extension_descriptor (usb_2_0_extension : access libusb_usb_2_0_extension_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1347
   pragma Import (C, libusb_free_usb_2_0_extension_descriptor, "libusb_free_usb_2_0_extension_descriptor");

   function libusb_get_ss_usb_device_capability_descriptor
     (ctx : System.Address;
      dev_cap : access libusb_bos_dev_capability_descriptor;
      ss_usb_device_cap : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1349
   pragma Import (C, libusb_get_ss_usb_device_capability_descriptor, "libusb_get_ss_usb_device_capability_descriptor");

   procedure libusb_free_ss_usb_device_capability_descriptor (ss_usb_device_cap : access libusb_ss_usb_device_capability_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1353
   pragma Import (C, libusb_free_ss_usb_device_capability_descriptor, "libusb_free_ss_usb_device_capability_descriptor");

   function libusb_get_container_id_descriptor
     (ctx : System.Address;
      dev_cap : access libusb_bos_dev_capability_descriptor;
      container_id : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1355
   pragma Import (C, libusb_get_container_id_descriptor, "libusb_get_container_id_descriptor");

   procedure libusb_free_container_id_descriptor (container_id : access libusb_container_id_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1358
   pragma Import (C, libusb_free_container_id_descriptor, "libusb_free_container_id_descriptor");

   function libusb_get_bus_number (dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1360
   pragma Import (C, libusb_get_bus_number, "libusb_get_bus_number");

   function libusb_get_port_number (dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1361
   pragma Import (C, libusb_get_port_number, "libusb_get_port_number");

   function libusb_get_port_numbers
     (dev : System.Address;
      port_numbers : access Interfaces.Unsigned_8;
      port_numbers_len : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1362
   pragma Import (C, libusb_get_port_numbers, "libusb_get_port_numbers");

   function libusb_get_port_path
     (ctx : System.Address;
      dev : System.Address;
      path : access Interfaces.Unsigned_8;
      path_length : Interfaces.Unsigned_8) return int;  -- /usr/include/libusb-1.0/libusb.h:1364
   pragma Import (C, libusb_get_port_path, "libusb_get_port_path");

   function libusb_get_parent (dev : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1365
   pragma Import (C, libusb_get_parent, "libusb_get_parent");

   function libusb_get_device_address (dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1366
   pragma Import (C, libusb_get_device_address, "libusb_get_device_address");

   function libusb_get_device_speed (dev : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1367
   pragma Import (C, libusb_get_device_speed, "libusb_get_device_speed");

   function libusb_get_max_packet_size (dev : System.Address; endpoint : unsigned_char) return int;  -- /usr/include/libusb-1.0/libusb.h:1368
   pragma Import (C, libusb_get_max_packet_size, "libusb_get_max_packet_size");

   function libusb_get_max_iso_packet_size (dev : System.Address; endpoint : unsigned_char) return int;  -- /usr/include/libusb-1.0/libusb.h:1370
   pragma Import (C, libusb_get_max_iso_packet_size, "libusb_get_max_iso_packet_size");

   function libusb_open (dev : System.Address; dev_handle : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1373
   pragma Import (C, libusb_open, "libusb_open");

   procedure libusb_close (dev_handle : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1374
   pragma Import (C, libusb_close, "libusb_close");

   function libusb_get_device (dev_handle : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1375
   pragma Import (C, libusb_get_device, "libusb_get_device");

   function libusb_set_configuration (dev_handle : System.Address; configuration : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1377
   pragma Import (C, libusb_set_configuration, "libusb_set_configuration");

   function libusb_claim_interface (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1379
   pragma Import (C, libusb_claim_interface, "libusb_claim_interface");

   function libusb_release_interface (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1381
   pragma Import (C, libusb_release_interface, "libusb_release_interface");

   function libusb_open_device_with_vid_pid
     (ctx : System.Address;
      vendor_id : Interfaces.Unsigned_16;
      product_id : Interfaces.Unsigned_16) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1384
   pragma Import (C, libusb_open_device_with_vid_pid, "libusb_open_device_with_vid_pid");

   function libusb_set_interface_alt_setting
     (dev_handle : System.Address;
      interface_number : int;
      alternate_setting : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1387
   pragma Import (C, libusb_set_interface_alt_setting, "libusb_set_interface_alt_setting");

   function libusb_clear_halt (dev_handle : System.Address; endpoint : unsigned_char) return int;  -- /usr/include/libusb-1.0/libusb.h:1389
   pragma Import (C, libusb_clear_halt, "libusb_clear_halt");

   function libusb_reset_device (dev_handle : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1391
   pragma Import (C, libusb_reset_device, "libusb_reset_device");

   function libusb_alloc_streams
     (dev_handle : System.Address;
      num_streams : Interfaces.Unsigned_32;
      endpoints : access unsigned_char;
      num_endpoints : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1393
   pragma Import (C, libusb_alloc_streams, "libusb_alloc_streams");

   function libusb_free_streams
     (dev_handle : System.Address;
      endpoints : access unsigned_char;
      num_endpoints : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1395
   pragma Import (C, libusb_free_streams, "libusb_free_streams");

   function libusb_dev_mem_alloc (dev_handle : System.Address; length : size_t) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1398
   pragma Import (C, libusb_dev_mem_alloc, "libusb_dev_mem_alloc");

   function libusb_dev_mem_free
     (dev_handle : System.Address;
      buffer : access unsigned_char;
      length : size_t) return int;  -- /usr/include/libusb-1.0/libusb.h:1400
   pragma Import (C, libusb_dev_mem_free, "libusb_dev_mem_free");

   function libusb_kernel_driver_active (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1403
   pragma Import (C, libusb_kernel_driver_active, "libusb_kernel_driver_active");

   function libusb_detach_kernel_driver (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1405
   pragma Import (C, libusb_detach_kernel_driver, "libusb_detach_kernel_driver");

   function libusb_attach_kernel_driver (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1407
   pragma Import (C, libusb_attach_kernel_driver, "libusb_attach_kernel_driver");

   function libusb_set_auto_detach_kernel_driver (dev_handle : System.Address; enable : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1409
   pragma Import (C, libusb_set_auto_detach_kernel_driver, "libusb_set_auto_detach_kernel_driver");

   function libusb_control_transfer_get_data (transfer : access libusb_transfer) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1426
   pragma Import (C, libusb_control_transfer_get_data, "libusb_control_transfer_get_data");

   function libusb_control_transfer_get_setup (transfer : access libusb_transfer) return access libusb_control_setup;  -- /usr/include/libusb-1.0/libusb.h:1444
   pragma Import (C, libusb_control_transfer_get_setup, "libusb_control_transfer_get_setup");

   procedure libusb_fill_control_setup
     (buffer : access unsigned_char;
      bmRequestType : Interfaces.Unsigned_8;
      bRequest : Interfaces.Unsigned_8;
      wValue : Interfaces.Unsigned_16;
      wIndex : Interfaces.Unsigned_16;
      wLength : Interfaces.Unsigned_16);  -- /usr/include/libusb-1.0/libusb.h:1473
   pragma Import (C, libusb_fill_control_setup, "libusb_fill_control_setup");

   function libusb_alloc_transfer (iso_packets : int) return access libusb_transfer;  -- /usr/include/libusb-1.0/libusb.h:1485
   pragma Import (C, libusb_alloc_transfer, "libusb_alloc_transfer");

   function libusb_submit_transfer (transfer : access libusb_transfer) return int;  -- /usr/include/libusb-1.0/libusb.h:1486
   pragma Import (C, libusb_submit_transfer, "libusb_submit_transfer");

   function libusb_cancel_transfer (transfer : access libusb_transfer) return int;  -- /usr/include/libusb-1.0/libusb.h:1487
   pragma Import (C, libusb_cancel_transfer, "libusb_cancel_transfer");

   procedure libusb_free_transfer (transfer : access libusb_transfer);  -- /usr/include/libusb-1.0/libusb.h:1488
   pragma Import (C, libusb_free_transfer, "libusb_free_transfer");

   procedure libusb_transfer_set_stream_id (transfer : access libusb_transfer; stream_id : Interfaces.Unsigned_32);  -- /usr/include/libusb-1.0/libusb.h:1489
   pragma Import (C, libusb_transfer_set_stream_id, "libusb_transfer_set_stream_id");

   function libusb_transfer_get_stream_id (transfer : access libusb_transfer) return Interfaces.Unsigned_32;  -- /usr/include/libusb-1.0/libusb.h:1491
   pragma Import (C, libusb_transfer_get_stream_id, "libusb_transfer_get_stream_id");

   procedure libusb_fill_control_transfer
     (transfer : access libusb_transfer;
      dev_handle : System.Address;
      buffer : access unsigned_char;
      callback : libusb_transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1522
   pragma Import (C, libusb_fill_control_transfer, "libusb_fill_control_transfer");

   procedure libusb_fill_bulk_transfer
     (transfer : access libusb_transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      buffer : access unsigned_char;
      length : int;
      callback : libusb_transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1553
   pragma Import (C, libusb_fill_bulk_transfer, "libusb_fill_bulk_transfer");

   procedure libusb_fill_bulk_stream_transfer
     (transfer : access libusb_transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      stream_id : Interfaces.Unsigned_32;
      buffer : access unsigned_char;
      length : int;
      callback : libusb_transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1584
   pragma Import (C, libusb_fill_bulk_stream_transfer, "libusb_fill_bulk_stream_transfer");

   procedure libusb_fill_interrupt_transfer
     (transfer : access libusb_transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      buffer : access unsigned_char;
      length : int;
      callback : libusb_transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1609
   pragma Import (C, libusb_fill_interrupt_transfer, "libusb_fill_interrupt_transfer");

   procedure libusb_fill_iso_transfer
     (transfer : access libusb_transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      buffer : access unsigned_char;
      length : int;
      num_iso_packets : int;
      callback : libusb_transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1638
   pragma Import (C, libusb_fill_iso_transfer, "libusb_fill_iso_transfer");

   procedure libusb_set_iso_packet_lengths (transfer : access libusb_transfer; length : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1662
   pragma Import (C, libusb_set_iso_packet_lengths, "libusb_set_iso_packet_lengths");

   function libusb_get_iso_packet_buffer (transfer : access libusb_transfer; packet : unsigned) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1686
   pragma Import (C, libusb_get_iso_packet_buffer, "libusb_get_iso_packet_buffer");

   function libusb_get_iso_packet_buffer_simple (transfer : access libusb_transfer; packet : unsigned) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1728
   pragma Import (C, libusb_get_iso_packet_buffer_simple, "libusb_get_iso_packet_buffer_simple");

   function libusb_control_transfer
     (dev_handle : System.Address;
      request_type : Interfaces.Unsigned_8;
      bRequest : Interfaces.Unsigned_8;
      wValue : Interfaces.Unsigned_16;
      wIndex : Interfaces.Unsigned_16;
      data : access unsigned_char;
      wLength : Interfaces.Unsigned_16;
      timeout : unsigned) return int;  -- /usr/include/libusb-1.0/libusb.h:1748
   pragma Import (C, libusb_control_transfer, "libusb_control_transfer");

   function libusb_bulk_transfer
     (dev_handle : System.Address;
      endpoint : unsigned_char;
      data : access unsigned_char;
      length : int;
      actual_length : access int;
      timeout : unsigned) return int;  -- /usr/include/libusb-1.0/libusb.h:1752
   pragma Import (C, libusb_bulk_transfer, "libusb_bulk_transfer");

   function libusb_interrupt_transfer
     (dev_handle : System.Address;
      endpoint : unsigned_char;
      data : access unsigned_char;
      length : int;
      actual_length : access int;
      timeout : unsigned) return int;  -- /usr/include/libusb-1.0/libusb.h:1756
   pragma Import (C, libusb_interrupt_transfer, "libusb_interrupt_transfer");

   function libusb_get_descriptor
     (dev_handle : System.Address;
      desc_type : Interfaces.Unsigned_8;
      desc_index : Interfaces.Unsigned_8;
      data : access unsigned_char;
      length : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1772
   pragma Import (C, libusb_get_descriptor, "libusb_get_descriptor");

   function libusb_get_string_descriptor
     (dev_handle : System.Address;
      desc_index : Interfaces.Unsigned_8;
      langid : Interfaces.Unsigned_16;
      data : access unsigned_char;
      length : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1794
   pragma Import (C, libusb_get_string_descriptor, "libusb_get_string_descriptor");

   function libusb_get_string_descriptor_ascii
     (dev_handle : System.Address;
      desc_index : Interfaces.Unsigned_8;
      data : access unsigned_char;
      length : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1802
   pragma Import (C, libusb_get_string_descriptor_ascii, "libusb_get_string_descriptor_ascii");

   function libusb_try_lock_events (ctx : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1807
   pragma Import (C, libusb_try_lock_events, "libusb_try_lock_events");

   procedure libusb_lock_events (ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1808
   pragma Import (C, libusb_lock_events, "libusb_lock_events");

   procedure libusb_unlock_events (ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1809
   pragma Import (C, libusb_unlock_events, "libusb_unlock_events");

   function libusb_event_handling_ok (ctx : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1810
   pragma Import (C, libusb_event_handling_ok, "libusb_event_handling_ok");

   function libusb_event_handler_active (ctx : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1811
   pragma Import (C, libusb_event_handler_active, "libusb_event_handler_active");

   procedure libusb_interrupt_event_handler (ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1812
   pragma Import (C, libusb_interrupt_event_handler, "libusb_interrupt_event_handler");

   procedure libusb_lock_event_waiters (ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1813
   pragma Import (C, libusb_lock_event_waiters, "libusb_lock_event_waiters");

   procedure libusb_unlock_event_waiters (ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1814
   pragma Import (C, libusb_unlock_event_waiters, "libusb_unlock_event_waiters");

   function libusb_wait_for_event (ctx : System.Address; tv : access bits_types_struct_timeval_h.timeval) return int;  -- /usr/include/libusb-1.0/libusb.h:1815
   pragma Import (C, libusb_wait_for_event, "libusb_wait_for_event");

   function libusb_handle_events_timeout (ctx : System.Address; tv : access bits_types_struct_timeval_h.timeval) return int;  -- /usr/include/libusb-1.0/libusb.h:1817
   pragma Import (C, libusb_handle_events_timeout, "libusb_handle_events_timeout");

   function libusb_handle_events_timeout_completed
     (ctx : System.Address;
      tv : access bits_types_struct_timeval_h.timeval;
      completed : access int) return int;  -- /usr/include/libusb-1.0/libusb.h:1819
   pragma Import (C, libusb_handle_events_timeout_completed, "libusb_handle_events_timeout_completed");

   function libusb_handle_events (ctx : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1821
   pragma Import (C, libusb_handle_events, "libusb_handle_events");

   function libusb_handle_events_completed (ctx : System.Address; completed : access int) return int;  -- /usr/include/libusb-1.0/libusb.h:1822
   pragma Import (C, libusb_handle_events_completed, "libusb_handle_events_completed");

   function libusb_handle_events_locked (ctx : System.Address; tv : access bits_types_struct_timeval_h.timeval) return int;  -- /usr/include/libusb-1.0/libusb.h:1823
   pragma Import (C, libusb_handle_events_locked, "libusb_handle_events_locked");

   function libusb_pollfds_handle_timeouts (ctx : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1825
   pragma Import (C, libusb_pollfds_handle_timeouts, "libusb_pollfds_handle_timeouts");

   function libusb_get_next_timeout (ctx : System.Address; tv : access bits_types_struct_timeval_h.timeval) return int;  -- /usr/include/libusb-1.0/libusb.h:1826
   pragma Import (C, libusb_get_next_timeout, "libusb_get_next_timeout");

   type libusb_pollfd is record
      fd : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1834
      events : aliased short;  -- /usr/include/libusb-1.0/libusb.h:1840
   end record;
   pragma Convention (C_Pass_By_Copy, libusb_pollfd);  -- /usr/include/libusb-1.0/libusb.h:1832

   type libusb_pollfd_added_cb is access procedure 
        (arg1 : int;
         arg2 : short;
         arg3 : System.Address);
   pragma Convention (C, libusb_pollfd_added_cb);  -- /usr/include/libusb-1.0/libusb.h:1853

   type libusb_pollfd_removed_cb is access procedure  (arg1 : int; arg2 : System.Address);
   pragma Convention (C, libusb_pollfd_removed_cb);  -- /usr/include/libusb-1.0/libusb.h:1865

   function libusb_get_pollfds (ctx : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1867
   pragma Import (C, libusb_get_pollfds, "libusb_get_pollfds");

   procedure libusb_free_pollfds (pollfds : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1869
   pragma Import (C, libusb_free_pollfds, "libusb_free_pollfds");

   procedure libusb_set_pollfd_notifiers
     (ctx : System.Address;
      added_cb : libusb_pollfd_added_cb;
      removed_cb : libusb_pollfd_removed_cb;
      user_data : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1870
   pragma Import (C, libusb_set_pollfd_notifiers, "libusb_set_pollfd_notifiers");

   subtype libusb_hotplug_callback_handle is int;  -- /usr/include/libusb-1.0/libusb.h:1886

   type libusb_hotplug_flag is 
     (LIBUSB_HOTPLUG_NO_FLAGS,
      LIBUSB_HOTPLUG_ENUMERATE);
   pragma Convention (C, libusb_hotplug_flag);  -- /usr/include/libusb-1.0/libusb.h:1899

   subtype libusb_hotplug_event is unsigned;
   LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED : constant libusb_hotplug_event := 1;
   LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT : constant libusb_hotplug_event := 2;  -- /usr/include/libusb-1.0/libusb.h:1914

   type libusb_hotplug_callback_fn is access function 
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : libusb_hotplug_event;
         arg4 : System.Address) return int;
   pragma Convention (C, libusb_hotplug_callback_fn);  -- /usr/include/libusb-1.0/libusb.h:1942

   function libusb_hotplug_register_callback
     (ctx : System.Address;
      events : libusb_hotplug_event;
      flags : libusb_hotplug_flag;
      vendor_id : int;
      product_id : int;
      dev_class : int;
      cb_fn : libusb_hotplug_callback_fn;
      user_data : System.Address;
      callback_handle : access libusb_hotplug_callback_handle) return int;  -- /usr/include/libusb-1.0/libusb.h:1981
   pragma Import (C, libusb_hotplug_register_callback, "libusb_hotplug_register_callback");

   procedure libusb_hotplug_deregister_callback (ctx : System.Address; callback_handle : libusb_hotplug_callback_handle);  -- /usr/include/libusb-1.0/libusb.h:2001
   pragma Import (C, libusb_hotplug_deregister_callback, "libusb_hotplug_deregister_callback");

end libusb_1_0_libusb_h;
