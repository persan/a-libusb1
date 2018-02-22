with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;
with Ada.Finalization;


package USB is



   --  unsupported macro: DEPRECATED_FOR(f) __attribute__((deprecated("Use " #f " instead")))
   API_VERSION : constant := 16#01000105#;  --  /usr/include/libusb-1.0/libusb.h:144
   --  unsupported macro: LIBUSBX_API_VERSION API_VERSION
   --  unsupported macro: le16_to_cpu cpu_to_le16

   DT_DEVICE_SIZE : constant := 18;  --  /usr/include/libusb-1.0/libusb.h:290
   DT_CONFIG_SIZE : constant := 9;  --  /usr/include/libusb-1.0/libusb.h:291
   DT_INTERFACE_SIZE : constant := 9;  --  /usr/include/libusb-1.0/libusb.h:292
   DT_ENDPOINT_SIZE : constant := 7;  --  /usr/include/libusb-1.0/libusb.h:293
   DT_ENDPOINT_AUDIO_SIZE : constant := 9;  --  /usr/include/libusb-1.0/libusb.h:294
   DT_HUB_NONVAR_SIZE : constant := 7;  --  /usr/include/libusb-1.0/libusb.h:295
   DT_SS_ENDPOINT_COMPANION_SIZE : constant := 6;  --  /usr/include/libusb-1.0/libusb.h:296
   DT_BOS_SIZE : constant := 5;  --  /usr/include/libusb-1.0/libusb.h:297
   DT_DEVICE_CAPABILITY_SIZE : constant := 3;  --  /usr/include/libusb-1.0/libusb.h:298

   BT_USB_2_0_EXTENSION_SIZE : constant := 7;  --  /usr/include/libusb-1.0/libusb.h:301
   BT_SS_USB_DEVICE_CAPABILITY_SIZE : constant := 10;  --  /usr/include/libusb-1.0/libusb.h:302
   BT_CONTAINER_ID_SIZE : constant := 20;  --  /usr/include/libusb-1.0/libusb.h:303
   --  unsupported macro: DT_BOS_MAX_SIZE ((LIBUSB_DT_BOS_SIZE) + (LIBUSB_BT_USB_2_0_EXTENSION_SIZE) + (LIBUSB_BT_SS_USB_DEVICE_CAPABILITY_SIZE) + (LIBUSB_BT_CONTAINER_ID_SIZE))

   ENDPOINT_ADDRESS_MASK : constant := 16#0f#;  --  /usr/include/libusb-1.0/libusb.h:311
   ENDPOINT_DIR_MASK : constant := 16#80#;  --  /usr/include/libusb-1.0/libusb.h:312

   TRANSFER_TYPE_MASK : constant := 16#03#;  --  /usr/include/libusb-1.0/libusb.h:326

   ISO_SYNC_TYPE_MASK : constant := 16#0C#;  --  /usr/include/libusb-1.0/libusb.h:433

   ISO_USAGE_TYPE_MASK : constant := 16#30#;  --  /usr/include/libusb-1.0/libusb.h:454
   --  unsupported macro: CONTROL_SETUP_SIZE (sizeof(struct control_setup))

   ERROR_COUNT : constant := 14;  --  /usr/include/libusb-1.0/libusb.h:1102

   HOTPLUG_MATCH_ANY : constant := -1;  --  /usr/include/libusb-1.0/libusb.h:1918

   function cpu_to_le16 (x : Interfaces.Unsigned_16) return Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:161


   subtype class_code is unsigned;
   CLASS_PER_INTERFACE : constant class_code := 0;
   CLASS_AUDIO : constant class_code := 1;
   CLASS_COMM : constant class_code := 2;
   CLASS_HID : constant class_code := 3;
   CLASS_PHYSICAL : constant class_code := 5;
   CLASS_PRINTER : constant class_code := 7;
   CLASS_PTP : constant class_code := 6;
   CLASS_IMAGE : constant class_code := 6;
   CLASS_MASS_STORAGE : constant class_code := 8;
   CLASS_HUB : constant class_code := 9;
   CLASS_DATA : constant class_code := 10;
   CLASS_SMART_CARD : constant class_code := 11;
   CLASS_CONTENT_SECURITY : constant class_code := 13;
   CLASS_VIDEO : constant class_code := 14;
   CLASS_PERSONAL_HEALTHCARE : constant class_code := 15;
   CLASS_DIAGNOSTIC_DEVICE : constant class_code := 220;
   CLASS_WIRELESS : constant class_code := 224;
   CLASS_APPLICATION : constant class_code := 254;
   CLASS_VENDOR_SPEC : constant class_code := 255;  -- /usr/include/libusb-1.0/libusb.h:186

   subtype descriptor_type is unsigned;
   DT_DEVICE : constant descriptor_type := 1;
   DT_CONFIG : constant descriptor_type := 2;
   DT_STRING : constant descriptor_type := 3;
   DT_INTERFACE : constant descriptor_type := 4;
   DT_ENDPOINT : constant descriptor_type := 5;
   DT_BOS : constant descriptor_type := 15;
   DT_DEVICE_CAPABILITY : constant descriptor_type := 16;
   DT_HID : constant descriptor_type := 33;
   DT_REPORT : constant descriptor_type := 34;
   DT_PHYSICAL : constant descriptor_type := 35;
   DT_HUB : constant descriptor_type := 41;
   DT_SUPERSPEED_HUB : constant descriptor_type := 42;
   DT_SS_ENDPOINT_COMPANION : constant descriptor_type := 48;  -- /usr/include/libusb-1.0/libusb.h:248

   subtype endpoint_direction is unsigned;
   ENDPOINT_IN : constant endpoint_direction := 128;
   ENDPOINT_OUT : constant endpoint_direction := 0;  -- /usr/include/libusb-1.0/libusb.h:318

   type transfer_type is
     (LIBUSB_TRANSFER_TYPE_CONTROL,
      TRANSFER_TYPE_ISOCHRONOUS,
      TRANSFER_TYPE_BULK,
      TRANSFER_TYPE_INTERRUPT,
      TRANSFER_TYPE_BULK_STREAM);
   pragma Convention (C, transfer_type);  -- /usr/include/libusb-1.0/libusb.h:332

   subtype standard_request is unsigned;
   REQUEST_GET_STATUS : constant standard_request := 0;
   REQUEST_CLEAR_FEATURE : constant standard_request := 1;
   REQUEST_SET_FEATURE : constant standard_request := 3;
   REQUEST_SET_ADDRESS : constant standard_request := 5;
   REQUEST_GET_DESCRIPTOR : constant standard_request := 6;
   REQUEST_SET_DESCRIPTOR : constant standard_request := 7;
   REQUEST_GET_CONFIGURATION : constant standard_request := 8;
   REQUEST_SET_CONFIGURATION : constant standard_request := 9;
   REQUEST_GET_INTERFACE : constant standard_request := 10;
   REQUEST_SET_INTERFACE : constant standard_request := 11;
   REQUEST_SYNCH_FRAME : constant standard_request := 12;
   REQUEST_SET_SEL : constant standard_request := 48;
   SET_ISOCH_DELAY : constant standard_request := 49;  -- /usr/include/libusb-1.0/libusb.h:351

   subtype request_type is unsigned;
   REQUEST_TYPE_STANDARD : constant request_type := 0;
   REQUEST_TYPE_CLASS : constant request_type := 32;
   REQUEST_TYPE_VENDOR : constant request_type := 64;
   REQUEST_TYPE_RESERVED : constant request_type := 96;  -- /usr/include/libusb-1.0/libusb.h:401

   type request_recipient is
     (LIBUSB_RECIPIENT_DEVICE,
      RECIPIENT_INTERFACE,
      RECIPIENT_ENDPOINT,
      RECIPIENT_OTHER);
   pragma Convention (C, request_recipient);  -- /usr/include/libusb-1.0/libusb.h:419

   type iso_sync_type is
     (LIBUSB_ISO_SYNC_TYPE_NONE,
      ISO_SYNC_TYPE_ASYNC,
      ISO_SYNC_TYPE_ADAPTIVE,
      ISO_SYNC_TYPE_SYNC);
   pragma Convention (C, iso_sync_type);  -- /usr/include/libusb-1.0/libusb.h:440

   type iso_usage_type is
     (LIBUSB_ISO_USAGE_TYPE_DATA,
      ISO_USAGE_TYPE_FEEDBACK,
      ISO_USAGE_TYPE_IMPLICIT);
   pragma Convention (C, iso_usage_type);  -- /usr/include/libusb-1.0/libusb.h:461

   type device_descriptor is record
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
   pragma Convention (C_Pass_By_Copy, device_descriptor);  -- /usr/include/libusb-1.0/libusb.h:477

   type endpoint_descriptor is record
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
   pragma Convention (C_Pass_By_Copy, endpoint_descriptor);  -- /usr/include/libusb-1.0/libusb.h:531

   type interface_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:583
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:588
      bInterfaceNumber : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:591
      bAlternateSetting : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:594
      bNumEndpoints : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:598
      bInterfaceClass : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:601
      bInterfaceSubClass : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:605
      bInterfaceProtocol : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:609
      iInterface : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:612
      endpoint : access constant endpoint_descriptor;  -- /usr/include/libusb-1.0/libusb.h:616
      extra : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:620
      extra_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:623
   end record;
   pragma Convention (C_Pass_By_Copy, interface_descriptor);  -- /usr/include/libusb-1.0/libusb.h:581

   type interface_t is record
      altsetting : access constant interface_descriptor;  -- /usr/include/libusb-1.0/libusb.h:632
      num_altsetting : aliased int;  -- /usr/include/libusb-1.0/libusb.h:635
   end record;
   pragma Convention (C_Pass_By_Copy, interface_t);  -- /usr/include/libusb-1.0/libusb.h:629

   type config_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:645
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:650
      wTotalLength : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:653
      bNumInterfaces : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:656
      bConfigurationValue : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:659
      iConfiguration : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:662
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:665
      MaxPower : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:671
      c_interface : access constant interface_t;  -- /usr/include/libusb-1.0/libusb.h:675
      extra : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:679
      extra_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:682
   end record;
   pragma Convention (C_Pass_By_Copy, config_descriptor);  -- /usr/include/libusb-1.0/libusb.h:643

   type ss_endpoint_companion_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:694
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:699
      bMaxBurst : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:704
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:710
      wBytesPerInterval : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:714
   end record;
   pragma Convention (C_Pass_By_Copy, ss_endpoint_companion_descriptor);  -- /usr/include/libusb-1.0/libusb.h:691

   type bos_dev_capability_descriptor_dev_capability_data_array is array (0 .. -1) of aliased Interfaces.Unsigned_8;
   type bos_dev_capability_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:724
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:728
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:730
      dev_capability_data : aliased bos_dev_capability_descriptor_dev_capability_data_array;  -- /usr/include/libusb-1.0/libusb.h:736
   end record;
   pragma Convention (C_Pass_By_Copy, bos_dev_capability_descriptor);  -- /usr/include/libusb-1.0/libusb.h:722

   type bos_descriptor_dev_capability_array is array (0 .. -1) of access bos_dev_capability_descriptor;
   type bos_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:748
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:753
      wTotalLength : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:756
      bNumDeviceCaps : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:760
      dev_capability : bos_descriptor_dev_capability_array;  -- /usr/include/libusb-1.0/libusb.h:767
   end record;
   pragma Convention (C_Pass_By_Copy, bos_descriptor);  -- /usr/include/libusb-1.0/libusb.h:746

   type usb_2_0_extension_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:779
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:784
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:789
      bmAttributes : aliased Interfaces.Unsigned_32;  -- /usr/include/libusb-1.0/libusb.h:795
   end record;
   pragma Convention (C_Pass_By_Copy, usb_2_0_extension_descriptor);  -- /usr/include/libusb-1.0/libusb.h:777

   type ss_usb_device_capability_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:805
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:810
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:815
      bmAttributes : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:821
      wSpeedSupported : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:825
      bFunctionalitySupport : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:831
      bU1DevExitLat : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:834
      bU2DevExitLat : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:837
   end record;
   pragma Convention (C_Pass_By_Copy, ss_usb_device_capability_descriptor);  -- /usr/include/libusb-1.0/libusb.h:803

   type container_id_descriptor_ContainerID_array is array (0 .. 15) of aliased Interfaces.Unsigned_8;
   type container_id_descriptor is record
      bLength : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:847
      bDescriptorType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:852
      bDevCapabilityType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:857
      bReserved : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:860
      ContainerID : aliased container_id_descriptor_ContainerID_array;  -- /usr/include/libusb-1.0/libusb.h:863
   end record;
   pragma Convention (C_Pass_By_Copy, container_id_descriptor);  -- /usr/include/libusb-1.0/libusb.h:845

   type control_setup is record
      bmRequestType : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:874
      bRequest : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:881
      wValue : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:884
      wIndex : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:888
      wLength : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:891
   end record;
   pragma Convention (C_Pass_By_Copy, control_setup);  -- /usr/include/libusb-1.0/libusb.h:868

   --  skipped empty struct context

   --  skipped empty struct device

   --  skipped empty struct device_handle

   type version is record
      major : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:907
      minor : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:910
      micro : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:913
      nano : aliased Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:916
      rc : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:919
      describe : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:922
   end record;
   pragma Convention (C_Pass_By_Copy, version);  -- /usr/include/libusb-1.0/libusb.h:905

   type speed is
     (LIBUSB_SPEED_UNKNOWN,
      SPEED_LOW,
      SPEED_FULL,
      SPEED_HIGH,
      SPEED_SUPER);
   pragma Convention (C, speed);  -- /usr/include/libusb-1.0/libusb.h:975

   subtype supported_speed is unsigned;
   LOW_SPEED_OPERATION : constant supported_speed := 1;
   FULL_SPEED_OPERATION : constant supported_speed := 2;
   HIGH_SPEED_OPERATION : constant supported_speed := 4;
   SUPER_SPEED_OPERATION : constant supported_speed := 8;  -- /usr/include/libusb-1.0/libusb.h:996

   subtype usb_2_0_extension_attributes is unsigned;
   BM_LPM_SUPPORT : constant usb_2_0_extension_attributes := 2;  -- /usr/include/libusb-1.0/libusb.h:1015

   subtype ss_usb_device_capability_attributes is unsigned;
   BM_LTM_SUPPORT : constant ss_usb_device_capability_attributes := 2;  -- /usr/include/libusb-1.0/libusb.h:1025

   subtype bos_type is unsigned;
   BT_WIRELESS_USB_DEVICE_CAPABILITY : constant bos_type := 1;
   BT_USB_2_0_EXTENSION : constant bos_type := 2;
   BT_SS_USB_DEVICE_CAPABILITY : constant bos_type := 3;
   BT_CONTAINER_ID : constant bos_type := 4;  -- /usr/include/libusb-1.0/libusb.h:1033

   subtype error is int;
   SUCCESS : constant error := 0;
   ERROR_IO : constant error := -1;
   ERROR_INVALID_PARAM : constant error := -2;
   ERROR_ACCESS : constant error := -3;
   ERROR_NO_DEVICE : constant error := -4;
   ERROR_NOT_FOUND : constant error := -5;
   ERROR_BUSY : constant error := -6;
   ERROR_TIMEOUT : constant error := -7;
   ERROR_OVERFLOW : constant error := -8;
   ERROR_PIPE : constant error := -9;
   ERROR_INTERRUPTED : constant error := -10;
   ERROR_NO_MEM : constant error := -11;
   ERROR_NOT_SUPPORTED : constant error := -12;
   ERROR_OTHER : constant error := -99;  -- /usr/include/libusb-1.0/libusb.h:1054

   type transfer_status is
     (LIBUSB_TRANSFER_COMPLETED,
      TRANSFER_ERROR,
      TRANSFER_TIMED_OUT,
      TRANSFER_CANCELLED,
      TRANSFER_STALL,
      TRANSFER_NO_DEVICE,
      TRANSFER_OVERFLOW);
   pragma Convention (C, transfer_status);  -- /usr/include/libusb-1.0/libusb.h:1106

   subtype transfer_flags is unsigned;
   TRANSFER_SHORT_NOT_OK : constant transfer_flags := 1;
   TRANSFER_FREE_BUFFER : constant transfer_flags := 2;
   TRANSFER_FREE_TRANSFER : constant transfer_flags := 4;
   TRANSFER_ADD_ZERO_PACKET : constant transfer_flags := 8;  -- /usr/include/libusb-1.0/libusb.h:1136

   type iso_packet_descriptor is record
      length : aliased unsigned;  -- /usr/include/libusb-1.0/libusb.h:1182
      actual_length : aliased unsigned;  -- /usr/include/libusb-1.0/libusb.h:1185
      status : aliased transfer_status;  -- /usr/include/libusb-1.0/libusb.h:1188
   end record;
   pragma Convention (C_Pass_By_Copy, iso_packet_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1180

   type transfer_cb_fn is access procedure  (arg1 : System.Address);
   pragma Convention (C, transfer_cb_fn);  -- /usr/include/libusb-1.0/libusb.h:1202

   type transfer_iso_packet_desc_array is array (0 .. -1) of aliased iso_packet_descriptor;
   type transfer is record
      dev_handle : System.Address;  -- /usr/include/libusb-1.0/libusb.h:1212
      flags : aliased Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1215
      endpoint : aliased unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1218
      c_type : aliased unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1221
      timeout : aliased unsigned;  -- /usr/include/libusb-1.0/libusb.h:1225
      status : aliased transfer_status;  -- /usr/include/libusb-1.0/libusb.h:1234
      length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1237
      actual_length : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1242
      callback : transfer_cb_fn;  -- /usr/include/libusb-1.0/libusb.h:1246
      user_data : System.Address;  -- /usr/include/libusb-1.0/libusb.h:1249
      buffer : access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1252
      num_iso_packets : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1256
      iso_packet_desc : aliased transfer_iso_packet_desc_array;  -- /usr/include/libusb-1.0/libusb.h:1263
   end record;
   pragma Convention (C_Pass_By_Copy, transfer);  -- /usr/include/libusb-1.0/libusb.h:1210

   subtype capability is unsigned;
   CAP_HAS_CAPABILITY : constant capability := 0;
   CAP_HAS_HOTPLUG : constant capability := 1;
   CAP_HAS_HID_ACCESS : constant capability := 256;
   CAP_SUPPORTS_DETACH_KERNEL_DRIVER : constant capability := 257;  -- /usr/include/libusb-1.0/libusb.h:1273

   type log_level is
     (LIBUSB_LOG_LEVEL_NONE,
      LOG_LEVEL_ERROR,
      LOG_LEVEL_WARNING,
      LOG_LEVEL_INFO,
      LOG_LEVEL_DEBUG);
   pragma Convention (C, log_level);  -- /usr/include/libusb-1.0/libusb.h:1298

   type Context is new Ada.Finalization.Limited_Controlled with record
      Ctx : System.Address;
   end record;

   procedure Initialize (Ctx : in out Context);

   procedure Finalize   (Ctx : in out Context);

   procedure set_debug (ctx : context; level : int);  -- /usr/include/libusb-1.0/libusb.h:1308


   function get_version return access constant version;  -- /usr/include/libusb-1.0/libusb.h:1309


   function has_capability (capability : Interfaces.Unsigned_32) return int;  -- /usr/include/libusb-1.0/libusb.h:1310


   function error_name (errcode : int) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:1311


   procedure Setlocale (Locale : Interfaces.C.Strings.Chars_Ptr);  -- /usr/include/libusb-1.0/libusb.h:13


   function strerror (errcode : error) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/libusb-1.0/libusb.h:1313


   function get_device_list (ctx : context; list : System.Address) return size_t;  -- /usr/include/libusb-1.0/libusb.h:1315


   procedure free_device_list (list : System.Address; unref_devices : int);  -- /usr/include/libusb-1.0/libusb.h:1317


   function ref_device (dev : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1319


   procedure unref_device (dev : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1320


   function get_configuration (dev : System.Address; config : access int) return int;  -- /usr/include/libusb-1.0/libusb.h:1322


   function get_device_descriptor (dev : System.Address; desc : access device_descriptor) return int;  -- /usr/include/libusb-1.0/libusb.h:1324


   function get_active_config_descriptor (dev : System.Address; config : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1326


   function get_config_descriptor
     (dev : System.Address;
      config_index : Interfaces.Unsigned_8;
      config : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1328


   function get_config_descriptor_by_value
     (dev : System.Address;
      bConfigurationValue : Interfaces.Unsigned_8;
      config : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1330


   procedure free_config_descriptor (config : access config_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1332


   function get_ss_endpoint_companion_descriptor
     (ctx : context;
      endpoint : access constant endpoint_descriptor;
      ep_comp : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1334


   procedure free_ss_endpoint_companion_descriptor (ep_comp : access ss_endpoint_companion_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1338


   function get_bos_descriptor (dev_handle : System.Address; bos : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1340


   procedure free_bos_descriptor (bos : access bos_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1342


   function get_usb_2_0_extension_descriptor
     (ctx : context;
      dev_cap : access bos_dev_capability_descriptor;
      usb_2_0_extension : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1343


   procedure free_usb_2_0_extension_descriptor (usb_2_0_extension : access usb_2_0_extension_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1347


   function get_ss_usb_device_capability_descriptor
     (ctx : context;
      dev_cap : access bos_dev_capability_descriptor;
      ss_usb_device_cap : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1349


   procedure free_ss_usb_device_capability_descriptor (ss_usb_device_cap : access ss_usb_device_capability_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1353


   function get_container_id_descriptor
     (ctx : context;
      dev_cap : access bos_dev_capability_descriptor;
      container_id : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1355


   procedure free_container_id_descriptor (container_id : access container_id_descriptor);  -- /usr/include/libusb-1.0/libusb.h:1358


   function get_bus_number (dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1360


   function get_port_number (dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1361


   function get_port_numbers
     (dev : System.Address;
      port_numbers : access Interfaces.Unsigned_8;
      port_numbers_len : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1362


   function get_port_path
     (ctx : context;
      dev : System.Address;
      path : access Interfaces.Unsigned_8;
      path_length : Interfaces.Unsigned_8) return int;  -- /usr/include/libusb-1.0/libusb.h:1364


   function get_parent (dev : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1365


   function get_device_address (dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1366


   function get_device_speed (dev : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1367


   function get_max_packet_size (dev : System.Address; endpoint : unsigned_char) return int;  -- /usr/include/libusb-1.0/libusb.h:1368


   function get_max_iso_packet_size (dev : System.Address; endpoint : unsigned_char) return int;  -- /usr/include/libusb-1.0/libusb.h:1370


   function open (dev : System.Address; dev_handle : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1373


   procedure close (dev_handle : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1374


   function get_device (dev_handle : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1375


   function set_configuration (dev_handle : System.Address; configuration : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1377


   function claim_interface (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1379


   function release_interface (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1381


   function open_device_with_vid_pid
     (ctx : context;
      vendor_id : Interfaces.Unsigned_16;
      product_id : Interfaces.Unsigned_16) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1384


   function set_interface_alt_setting
     (dev_handle : System.Address;
      interface_number : int;
      alternate_setting : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1387


   function clear_halt (dev_handle : System.Address; endpoint : unsigned_char) return int;  -- /usr/include/libusb-1.0/libusb.h:1389


   function reset_device (dev_handle : System.Address) return int;  -- /usr/include/libusb-1.0/libusb.h:1391


   function alloc_streams
     (dev_handle : System.Address;
      num_streams : Interfaces.Unsigned_32;
      endpoints : access unsigned_char;
      num_endpoints : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1393


   function free_streams
     (dev_handle : System.Address;
      endpoints : access unsigned_char;
      num_endpoints : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1395


   function dev_mem_alloc (dev_handle : System.Address; length : size_t) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1398


   function dev_mem_free
     (dev_handle : System.Address;
      buffer : access unsigned_char;
      length : size_t) return int;  -- /usr/include/libusb-1.0/libusb.h:1400


   function kernel_driver_active (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1403


   function detach_kernel_driver (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1405


   function attach_kernel_driver (dev_handle : System.Address; interface_number : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1407


   function set_auto_detach_kernel_driver (dev_handle : System.Address; enable : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1409


   function control_transfer_get_data (transfe : access transfer) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1426


   function control_transfer_get_setup (transfe : access transfer) return access control_setup;  -- /usr/include/libusb-1.0/libusb.h:1444


   procedure fill_control_setup
     (buffer : access unsigned_char;
      bmRequestType : Interfaces.Unsigned_8;
      bRequest : Interfaces.Unsigned_8;
      wValue : Interfaces.Unsigned_16;
      wIndex : Interfaces.Unsigned_16;
      wLength : Interfaces.Unsigned_16);  -- /usr/include/libusb-1.0/libusb.h:1473


   function alloc_transfer (iso_packets : int) return access transfer;  -- /usr/include/libusb-1.0/libusb.h:1485


   function submit_transfer (transfe : access transfer) return int;  -- /usr/include/libusb-1.0/libusb.h:1486


   function cancel_transfer (transfe : access transfer) return int;  -- /usr/include/libusb-1.0/libusb.h:1487


   procedure free_transfer (transfe : access transfer);  -- /usr/include/libusb-1.0/libusb.h:1488


   procedure transfer_set_stream_id (transfe : access transfer; stream_id : Interfaces.Unsigned_32);  -- /usr/include/libusb-1.0/libusb.h:1489


   function transfer_get_stream_id (transfe : access transfer) return Interfaces.Unsigned_32;  -- /usr/include/libusb-1.0/libusb.h:1491


   procedure fill_control_transfer
     (transfe : access transfer;
      dev_handle : System.Address;
      buffer : access unsigned_char;
      callback : transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1522


   procedure fill_bulk_transfer
     (transfe : access transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      buffer : access unsigned_char;
      length : int;
      callback : transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1553


   procedure fill_bulk_stream_transfer
     (transfe : access transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      stream_id : Interfaces.Unsigned_32;
      buffer : access unsigned_char;
      length : int;
      callback : transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1584


   procedure fill_interrupt_transfer
     (transfe : access transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      buffer : access unsigned_char;
      length : int;
      callback : transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1609


   procedure fill_iso_transfer
     (transfe : access transfer;
      dev_handle : System.Address;
      endpoint : unsigned_char;
      buffer : access unsigned_char;
      length : int;
      num_iso_packets : int;
      callback : transfer_cb_fn;
      user_data : System.Address;
      timeout : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1638


   procedure set_iso_packet_lengths (transfe : access transfer; length : unsigned);  -- /usr/include/libusb-1.0/libusb.h:1662


   function get_iso_packet_buffer (transfe : access transfer; packet : unsigned) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1686


   function get_iso_packet_buffer_simple (transfe : access transfer; packet : unsigned) return access unsigned_char;  -- /usr/include/libusb-1.0/libusb.h:1728


   function control_transfer
     (dev_handle : System.Address;
      request_type : Interfaces.Unsigned_8;
      bRequest : Interfaces.Unsigned_8;
      wValue : Interfaces.Unsigned_16;
      wIndex : Interfaces.Unsigned_16;
      data : access unsigned_char;
      wLength : Interfaces.Unsigned_16;
      timeout : unsigned) return int;  -- /usr/include/libusb-1.0/libusb.h:1748


   function bulk_transfer
     (dev_handle : System.Address;
      endpoint : unsigned_char;
      data : access unsigned_char;
      length : int;
      actual_length : access int;
      timeout : unsigned) return int;  -- /usr/include/libusb-1.0/libusb.h:1752


   function interrupt_transfer
     (dev_handle : System.Address;
      endpoint : unsigned_char;
      data : access unsigned_char;
      length : int;
      actual_length : access int;
      timeout : unsigned) return int;  -- /usr/include/libusb-1.0/libusb.h:1756


   function get_descriptor
     (dev_handle : System.Address;
      desc_type : Interfaces.Unsigned_8;
      desc_index : Interfaces.Unsigned_8;
      data : access unsigned_char;
      length : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1772


   function get_string_descriptor
     (dev_handle : System.Address;
      desc_index : Interfaces.Unsigned_8;
      langid : Interfaces.Unsigned_16;
      data : access unsigned_char;
      length : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1794


   function get_string_descriptor_ascii
     (dev_handle : System.Address;
      desc_index : Interfaces.Unsigned_8;
      data : access unsigned_char;
      length : int) return int;  -- /usr/include/libusb-1.0/libusb.h:1802


   function try_lock_events (ctx : context) return int;  -- /usr/include/libusb-1.0/libusb.h:1807


   procedure lock_events (ctx : context);  -- /usr/include/libusb-1.0/libusb.h:1808


   procedure unlock_events (ctx : context);  -- /usr/include/libusb-1.0/libusb.h:1809


   function event_handling_ok (ctx : context) return int;  -- /usr/include/libusb-1.0/libusb.h:1810


   function event_handler_active (ctx : context) return int;  -- /usr/include/libusb-1.0/libusb.h:1811


   procedure interrupt_event_handler (ctx : context);  -- /usr/include/libusb-1.0/libusb.h:1812


   procedure lock_event_waiters (ctx : context);  -- /usr/include/libusb-1.0/libusb.h:1813


   procedure unlock_event_waiters (ctx : context);  -- /usr/include/libusb-1.0/libusb.h:1814


   function wait_for_event (ctx : context; tv : Duration) return int;  -- /usr/include/libusb-1.0/libusb.h:1815


   function handle_events_timeout (ctx : context; tv : Duration) return int;  -- /usr/include/libusb-1.0/libusb.h:1817


   function handle_events_timeout_completed
     (ctx : context;
      tv : Duration;
      completed : access int) return int;  -- /usr/include/libusb-1.0/libusb.h:1819


   function handle_events (ctx : context) return int;  -- /usr/include/libusb-1.0/libusb.h:1821


   function handle_events_completed (ctx : context; completed : access int) return int;  -- /usr/include/libusb-1.0/libusb.h:1822


   function handle_events_locked (ctx : context; tv : Duration) return int;  -- /usr/include/libusb-1.0/libusb.h:1823


   function pollfds_handle_timeouts (ctx : context) return int;  -- /usr/include/libusb-1.0/libusb.h:1825


   function get_next_timeout (Ctx : System.Address;
      Tv  : Duration)
                              return Int;  -- /usr/include/libusb-1.0/libusb.h:1826


   type pollfd is record
      fd : aliased int;  -- /usr/include/libusb-1.0/libusb.h:1834
      events : aliased short;  -- /usr/include/libusb-1.0/libusb.h:1840
   end record;
   pragma Convention (C_Pass_By_Copy, pollfd);  -- /usr/include/libusb-1.0/libusb.h:1832

   type pollfd_added_cb is access procedure
        (arg1 : int;
         arg2 : short;
         arg3 : System.Address);
   pragma Convention (C, pollfd_added_cb);  -- /usr/include/libusb-1.0/libusb.h:1853

   type pollfd_removed_cb is access procedure  (arg1 : int; arg2 : System.Address);
   pragma Convention (C, pollfd_removed_cb);  -- /usr/include/libusb-1.0/libusb.h:1865

   function get_pollfds (ctx : context) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1867


   procedure free_pollfds (pollfds : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1869


   procedure set_pollfd_notifiers
     (ctx : context;
      added_cb : pollfd_added_cb;
      removed_cb : pollfd_removed_cb;
      user_data : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1870


   subtype hotplug_callback_handle is int;  -- /usr/include/libusb-1.0/libusb.h:1886

   type hotplug_flag is
     (LIBUSB_HOTPLUG_NO_FLAGS,
      HOTPLUG_ENUMERATE);
   pragma Convention (C, hotplug_flag);  -- /usr/include/libusb-1.0/libusb.h:1899

   subtype hotplug_event is unsigned;
   HOTPLUG_EVENT_DEVICE_ARRIVED : constant hotplug_event := 1;
   HOTPLUG_EVENT_DEVICE_LEFT : constant hotplug_event := 2;  -- /usr/include/libusb-1.0/libusb.h:1914

   type hotplug_callback_fn is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : hotplug_event;
         arg4 : System.Address) return int;
   pragma Convention (C, hotplug_callback_fn);  -- /usr/include/libusb-1.0/libusb.h:1942

   function hotplug_register_callback
     (ctx : context;
      events : hotplug_event;
      flags : hotplug_flag;
      vendor_id : int;
      product_id : int;
      dev_class : int;
      cb_fn : hotplug_callback_fn;
      user_data : System.Address;
      callback_handle : access hotplug_callback_handle) return int;  -- /usr/include/libusb-1.0/libusb.h:1981


   procedure hotplug_deregister_callback (ctx : context; callback_handle : hotplug_callback_handle);  -- /usr/include/libusb-1.0/libusb.h:2001


private
   procedure Ret2exception (Code : Int) is null;

end USB;
