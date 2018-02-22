pragma Ada_2012;
package body USB is
   package bits_types_struct_timeval_h is

   type timeval is record
      tv_sec : aliased long;  -- /usr/include/bits/types/struct_timeval.h:10
      tv_usec : aliased long;  -- /usr/include/bits/types/struct_timeval.h:11
   end record;
   pragma Convention (C_Pass_By_Copy, timeval);  -- /usr/include/bits/types/struct_timeval.h:8

   end Bits_Types_Struct_Timeval_H;
   package Libusb_1_0_Libusb_H is
      function Libusb_Cpu_To_Le16 (X : Interfaces.Unsigned_16) return Interfaces.Unsigned_16;  -- /usr/include/libusb-1.0/libusb.h:161
      pragma Import (C, Libusb_Cpu_To_Le16, "libusb_cpu_to_le16");

      function Libusb_Init (Ctx : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1306
      pragma Import (C, Libusb_Init, "libusb_init");

      procedure Libusb_Exit (Ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1307
      pragma Import (C, Libusb_Exit, "libusb_exit");

      procedure Libusb_Set_Debug (Ctx : System.Address; Level : Int);  -- /usr/include/libusb-1.0/libusb.h:1308
      pragma Import (C, Libusb_Set_Debug, "libusb_set_debug");

      function Libusb_Get_Version return access constant Version;  -- /usr/include/libusb-1.0/libusb.h:1309
      pragma Import (C, Libusb_Get_Version, "libusb_get_version");

      function Libusb_Has_Capability (Capability : Interfaces.Unsigned_32) return Int;  -- /usr/include/libusb-1.0/libusb.h:1310
      pragma Import (C, Libusb_Has_Capability, "libusb_has_capability");

      function Libusb_Error_Name (Errcode : Int) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/libusb-1.0/libusb.h:1311
      pragma Import (C, Libusb_Error_Name, "libusb_error_name");

      function Libusb_Setlocale (Locale : Interfaces.C.Strings.Chars_Ptr) return Int;  -- /usr/include/libusb-1.0/libusb.h:1312
      pragma Import (C, Libusb_Setlocale, "libusb_setlocale");

      function Libusb_Strerror (Errcode : Error) return Interfaces.C.Strings.Chars_Ptr;  -- /usr/include/libusb-1.0/libusb.h:1313
      pragma Import (C, Libusb_Strerror, "libusb_strerror");

      function Libusb_Get_Device_List (Ctx : System.Address; List : System.Address) return Size_T;  -- /usr/include/libusb-1.0/libusb.h:1315
      pragma Import (C, Libusb_Get_Device_List, "libusb_get_device_list");

      procedure Libusb_Free_Device_List (List : System.Address; Unref_Devices : Int);  -- /usr/include/libusb-1.0/libusb.h:1317
      pragma Import (C, Libusb_Free_Device_List, "libusb_free_device_list");

      function Libusb_Ref_Device (Dev : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1319
      pragma Import (C, Libusb_Ref_Device, "libusb_ref_device");

      procedure Libusb_Unref_Device (Dev : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1320
      pragma Import (C, Libusb_Unref_Device, "libusb_unref_device");

      function Libusb_Get_Configuration (Dev : System.Address; Config : access Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1322
      pragma Import (C, Libusb_Get_Configuration, "libusb_get_configuration");

      function Libusb_Get_Device_Descriptor (Dev : System.Address; Desc : access Device_Descriptor) return Int;  -- /usr/include/libusb-1.0/libusb.h:1324
      pragma Import (C, Libusb_Get_Device_Descriptor, "libusb_get_device_descriptor");

      function Libusb_Get_Active_Config_Descriptor (Dev : System.Address; Config : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1326
      pragma Import (C, Libusb_Get_Active_Config_Descriptor, "libusb_get_active_config_descriptor");

      function Libusb_Get_Config_Descriptor
        (Dev          : System.Address;
         Config_Index : Interfaces.Unsigned_8;
         Config       : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1328
      pragma Import (C, Libusb_Get_Config_Descriptor, "libusb_get_config_descriptor");

      function Libusb_Get_Config_Descriptor_By_Value
        (Dev                 : System.Address;
         BConfigurationValue : Interfaces.Unsigned_8;
         Config              : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1330
      pragma Import (C, Libusb_Get_Config_Descriptor_By_Value, "libusb_get_config_descriptor_by_value");

      procedure Libusb_Free_Config_Descriptor (Config : access Config_Descriptor);  -- /usr/include/libusb-1.0/libusb.h:1332
      pragma Import (C, Libusb_Free_Config_Descriptor, "libusb_free_config_descriptor");

      function Libusb_Get_Ss_Endpoint_Companion_Descriptor
        (Ctx      : System.Address;
         Endpoint : access constant Endpoint_Descriptor;
         Ep_Comp  : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1334
      pragma Import (C, Libusb_Get_Ss_Endpoint_Companion_Descriptor, "libusb_get_ss_endpoint_companion_descriptor");

      procedure Libusb_Free_Ss_Endpoint_Companion_Descriptor (Ep_Comp : access Ss_Endpoint_Companion_Descriptor);  -- /usr/include/libusb-1.0/libusb.h:1338
      pragma Import (C, Libusb_Free_Ss_Endpoint_Companion_Descriptor, "libusb_free_ss_endpoint_companion_descriptor");

      function Libusb_Get_Bos_Descriptor (Dev_Handle : System.Address; Bos : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1340
      pragma Import (C, Libusb_Get_Bos_Descriptor, "libusb_get_bos_descriptor");

      procedure Libusb_Free_Bos_Descriptor (Bos : access Bos_Descriptor);  -- /usr/include/libusb-1.0/libusb.h:1342
      pragma Import (C, Libusb_Free_Bos_Descriptor, "libusb_free_bos_descriptor");

      function Libusb_Get_Usb_2_0_Extension_Descriptor
        (Ctx               : System.Address;
         Dev_Cap           : access Bos_Dev_Capability_Descriptor;
         Usb_2_0_Extension : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1343
      pragma Import (C, Libusb_Get_Usb_2_0_Extension_Descriptor, "libusb_get_usb_2_0_extension_descriptor");

      procedure Libusb_Free_Usb_2_0_Extension_Descriptor (Usb_2_0_Extension : access Usb_2_0_Extension_Descriptor);  -- /usr/include/libusb-1.0/libusb.h:1347
      pragma Import (C, Libusb_Free_Usb_2_0_Extension_Descriptor, "libusb_free_usb_2_0_extension_descriptor");

      function Libusb_Get_Ss_Usb_Device_Capability_Descriptor
        (Ctx               : System.Address;
         Dev_Cap           : access Bos_Dev_Capability_Descriptor;
         Ss_Usb_Device_Cap : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1349
      pragma Import (C, Libusb_Get_Ss_Usb_Device_Capability_Descriptor, "libusb_get_ss_usb_device_capability_descriptor");

      procedure Libusb_Free_Ss_Usb_Device_Capability_Descriptor (Ss_Usb_Device_Cap : access Ss_Usb_Device_Capability_Descriptor);  -- /usr/include/libusb-1.0/libusb.h:1353
      pragma Import (C, Libusb_Free_Ss_Usb_Device_Capability_Descriptor, "libusb_free_ss_usb_device_capability_descriptor");

      function Libusb_Get_Container_Id_Descriptor
        (Ctx          : System.Address;
         Dev_Cap      : access Bos_Dev_Capability_Descriptor;
         Container_Id : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1355
      pragma Import (C, Libusb_Get_Container_Id_Descriptor, "libusb_get_container_id_descriptor");

      procedure Libusb_Free_Container_Id_Descriptor (Container_Id : access Container_Id_Descriptor);  -- /usr/include/libusb-1.0/libusb.h:1358
      pragma Import (C, Libusb_Free_Container_Id_Descriptor, "libusb_free_container_id_descriptor");

      function Libusb_Get_Bus_Number (Dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1360
      pragma Import (C, Libusb_Get_Bus_Number, "libusb_get_bus_number");

      function Libusb_Get_Port_Number (Dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1361
      pragma Import (C, Libusb_Get_Port_Number, "libusb_get_port_number");

      function Libusb_Get_Port_Numbers
        (Dev              : System.Address;
         Port_Numbers     : access Interfaces.Unsigned_8;
         Port_Numbers_Len : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1362
      pragma Import (C, Libusb_Get_Port_Numbers, "libusb_get_port_numbers");

      function Libusb_Get_Port_Path
        (Ctx         : System.Address;
         Dev         : System.Address;
         Path        : access Interfaces.Unsigned_8;
         Path_Length : Interfaces.Unsigned_8) return Int;  -- /usr/include/libusb-1.0/libusb.h:1364
      pragma Import (C, Libusb_Get_Port_Path, "libusb_get_port_path");

      function Libusb_Get_Parent (Dev : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1365
      pragma Import (C, Libusb_Get_Parent, "libusb_get_parent");

      function Libusb_Get_Device_Address (Dev : System.Address) return Interfaces.Unsigned_8;  -- /usr/include/libusb-1.0/libusb.h:1366
      pragma Import (C, Libusb_Get_Device_Address, "libusb_get_device_address");

      function Libusb_Get_Device_Speed (Dev : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1367
      pragma Import (C, Libusb_Get_Device_Speed, "libusb_get_device_speed");

      function Libusb_Get_Max_Packet_Size (Dev : System.Address; Endpoint : Unsigned_Char) return Int;  -- /usr/include/libusb-1.0/libusb.h:1368
      pragma Import (C, Libusb_Get_Max_Packet_Size, "libusb_get_max_packet_size");

      function Libusb_Get_Max_Iso_Packet_Size (Dev : System.Address; Endpoint : Unsigned_Char) return Int;  -- /usr/include/libusb-1.0/libusb.h:1370
      pragma Import (C, Libusb_Get_Max_Iso_Packet_Size, "libusb_get_max_iso_packet_size");

      function Libusb_Open (Dev : System.Address; Dev_Handle : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1373
      pragma Import (C, Libusb_Open, "libusb_open");

      procedure Libusb_Close (Dev_Handle : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1374
      pragma Import (C, Libusb_Close, "libusb_close");

      function Libusb_Get_Device (Dev_Handle : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1375
      pragma Import (C, Libusb_Get_Device, "libusb_get_device");

      function Libusb_Set_Configuration (Dev_Handle : System.Address; Configuration : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1377
      pragma Import (C, Libusb_Set_Configuration, "libusb_set_configuration");

      function Libusb_Claim_Interface (Dev_Handle : System.Address; Interface_Number : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1379
      pragma Import (C, Libusb_Claim_Interface, "libusb_claim_interface");

      function Libusb_Release_Interface (Dev_Handle : System.Address; Interface_Number : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1381
      pragma Import (C, Libusb_Release_Interface, "libusb_release_interface");

      function Libusb_Open_Device_With_Vid_Pid
        (Ctx        : System.Address;
         Vendor_Id  : Interfaces.Unsigned_16;
         Product_Id : Interfaces.Unsigned_16) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1384
      pragma Import (C, Libusb_Open_Device_With_Vid_Pid, "libusb_open_device_with_vid_pid");

      function Libusb_Set_Interface_Alt_Setting
        (Dev_Handle        : System.Address;
         Interface_Number  : Int;
         Alternate_Setting : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1387
      pragma Import (C, Libusb_Set_Interface_Alt_Setting, "libusb_set_interface_alt_setting");

      function Libusb_Clear_Halt (Dev_Handle : System.Address; Endpoint : Unsigned_Char) return Int;  -- /usr/include/libusb-1.0/libusb.h:1389
      pragma Import (C, Libusb_Clear_Halt, "libusb_clear_halt");

      function Libusb_Reset_Device (Dev_Handle : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1391
      pragma Import (C, Libusb_Reset_Device, "libusb_reset_device");

      function Libusb_Alloc_Streams
        (Dev_Handle    : System.Address;
         Num_Streams   : Interfaces.Unsigned_32;
         Endpoints     : access Unsigned_Char;
         Num_Endpoints : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1393
      pragma Import (C, Libusb_Alloc_Streams, "libusb_alloc_streams");

      function Libusb_Free_Streams
        (Dev_Handle    : System.Address;
         Endpoints     : access Unsigned_Char;
         Num_Endpoints : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1395
      pragma Import (C, Libusb_Free_Streams, "libusb_free_streams");

      function Libusb_Dev_Mem_Alloc (Dev_Handle : System.Address; Length : Size_T) return access Unsigned_Char;  -- /usr/include/libusb-1.0/libusb.h:1398
      pragma Import (C, Libusb_Dev_Mem_Alloc, "libusb_dev_mem_alloc");

      function Libusb_Dev_Mem_Free
        (Dev_Handle : System.Address;
         Buffer     : access Unsigned_Char;
         Length     : Size_T) return Int;  -- /usr/include/libusb-1.0/libusb.h:1400
      pragma Import (C, Libusb_Dev_Mem_Free, "libusb_dev_mem_free");

      function Libusb_Kernel_Driver_Active (Dev_Handle : System.Address; Interface_Number : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1403
      pragma Import (C, Libusb_Kernel_Driver_Active, "libusb_kernel_driver_active");

      function Libusb_Detach_Kernel_Driver (Dev_Handle : System.Address; Interface_Number : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1405
      pragma Import (C, Libusb_Detach_Kernel_Driver, "libusb_detach_kernel_driver");

      function Libusb_Attach_Kernel_Driver (Dev_Handle : System.Address; Interface_Number : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1407
      pragma Import (C, Libusb_Attach_Kernel_Driver, "libusb_attach_kernel_driver");

      function Libusb_Set_Auto_Detach_Kernel_Driver (Dev_Handle : System.Address; Enable : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1409
      pragma Import (C, Libusb_Set_Auto_Detach_Kernel_Driver, "libusb_set_auto_detach_kernel_driver");

      function Libusb_Control_Transfer_Get_Data (T : access Transfer) return access Unsigned_Char;  -- /usr/include/libusb-1.0/libusb.h:1426
      pragma Import (C, Libusb_Control_Transfer_Get_Data, "libusb_control_transfer_get_data");

      function Libusb_Control_Transfer_Get_Setup (T : access Transfer) return access Control_Setup;  -- /usr/include/libusb-1.0/libusb.h:1444
      pragma Import (C, Libusb_Control_Transfer_Get_Setup, "libusb_control_transfer_get_setup");

      procedure Libusb_Fill_Control_Setup
        (Buffer        : access Unsigned_Char;
         BmRequestType : Interfaces.Unsigned_8;
         BRequest      : Interfaces.Unsigned_8;
         WValue        : Interfaces.Unsigned_16;
         WIndex        : Interfaces.Unsigned_16;
         WLength       : Interfaces.Unsigned_16);  -- /usr/include/libusb-1.0/libusb.h:1473
      pragma Import (C, Libusb_Fill_Control_Setup, "libusb_fill_control_setup");

      function Libusb_Alloc_Transfer (Iso_Packets : Int) return access Transfer;  -- /usr/include/libusb-1.0/libusb.h:1485
      pragma Import (C, Libusb_Alloc_Transfer, "libusb_alloc_transfer");

      function Libusb_Submit_Transfer (T : access Transfer) return Int;  -- /usr/include/libusb-1.0/libusb.h:1486
      pragma Import (C, Libusb_Submit_Transfer, "libusb_submit_transfer");

      function Libusb_Cancel_Transfer (T : access Transfer) return Int;  -- /usr/include/libusb-1.0/libusb.h:1487
      pragma Import (C, Libusb_Cancel_Transfer, "libusb_cancel_transfer");

      procedure Libusb_Free_Transfer (T : access Transfer);  -- /usr/include/libusb-1.0/libusb.h:1488
      pragma Import (C, Libusb_Free_Transfer, "libusb_free_transfer");

      procedure Libusb_Transfer_Set_Stream_Id (T : access Transfer; Stream_Id : Interfaces.Unsigned_32);  -- /usr/include/libusb-1.0/libusb.h:1489
      pragma Import (C, Libusb_Transfer_Set_Stream_Id, "libusb_transfer_set_stream_id");

      function Libusb_Transfer_Get_Stream_Id (T : access Transfer) return Interfaces.Unsigned_32;  -- /usr/include/libusb-1.0/libusb.h:1491
      pragma Import (C, Libusb_Transfer_Get_Stream_Id, "libusb_transfer_get_stream_id");

      procedure Libusb_Fill_Control_Transfer
        (T  : access Transfer;
         Dev_Handle : System.Address;
         Buffer     : access Unsigned_Char;
         Callback   : Transfer_Cb_Fn;
         User_Data  : System.Address;
         Timeout    : Unsigned);  -- /usr/include/libusb-1.0/libusb.h:1522
      pragma Import (C, Libusb_Fill_Control_Transfer, "libusb_fill_control_transfer");

      procedure Libusb_Fill_Bulk_Transfer
        (T   : access Transfer;
         Dev_Handle : System.Address;
         Endpoint   : Unsigned_Char;
         Buffer     : access Unsigned_Char;
         Length     : Int;
         Callback   : Transfer_Cb_Fn;
         User_Data  : System.Address;
         Timeout    : Unsigned);  -- /usr/include/libusb-1.0/libusb.h:1553
      pragma Import (C, Libusb_Fill_Bulk_Transfer, "libusb_fill_bulk_transfer");

      procedure Libusb_Fill_Bulk_Stream_Transfer
        (T   : access Transfer;
         Dev_Handle : System.Address;
         Endpoint   : Unsigned_Char;
         Stream_Id  : Interfaces.Unsigned_32;
         Buffer     : access Unsigned_Char;
         Length     : Int;
         Callback   : Transfer_Cb_Fn;
         User_Data  : System.Address;
         Timeout    : Unsigned);  -- /usr/include/libusb-1.0/libusb.h:1584
      pragma Import (C, Libusb_Fill_Bulk_Stream_Transfer, "libusb_fill_bulk_stream_transfer");

      procedure Libusb_Fill_Interrupt_Transfer
        (T   : access Transfer;
         Dev_Handle : System.Address;
         Endpoint   : Unsigned_Char;
         Buffer     : access Unsigned_Char;
         Length     : Int;
         Callback   : Transfer_Cb_Fn;
         User_Data  : System.Address;
         Timeout    : Unsigned);  -- /usr/include/libusb-1.0/libusb.h:1609
      pragma Import (C, Libusb_Fill_Interrupt_Transfer, "libusb_fill_interrupt_transfer");

      procedure Libusb_Fill_Iso_Transfer
        (T        : access Transfer;
         Dev_Handle      : System.Address;
         Endpoint        : Unsigned_Char;
         Buffer          : access Unsigned_Char;
         Length          : Int;
         Num_Iso_Packets : Int;
         Callback        : Transfer_Cb_Fn;
         User_Data       : System.Address;
         Timeout         : Unsigned);  -- /usr/include/libusb-1.0/libusb.h:1638
      pragma Import (C, Libusb_Fill_Iso_Transfer, "libusb_fill_iso_transfer");

      procedure Libusb_Set_Iso_Packet_Lengths (T : access Transfer; Length : Unsigned);  -- /usr/include/libusb-1.0/libusb.h:1662
      pragma Import (C, Libusb_Set_Iso_Packet_Lengths, "libusb_set_iso_packet_lengths");

      function Libusb_Get_Iso_Packet_Buffer (T : access Transfer; Packet : Unsigned) return access Unsigned_Char;  -- /usr/include/libusb-1.0/libusb.h:1686
      pragma Import (C, Libusb_Get_Iso_Packet_Buffer, "libusb_get_iso_packet_buffer");

      function Libusb_Get_Iso_Packet_Buffer_Simple (T : access Transfer; Packet : Unsigned) return access Unsigned_Char;  -- /usr/include/libusb-1.0/libusb.h:1728
      pragma Import (C, Libusb_Get_Iso_Packet_Buffer_Simple, "libusb_get_iso_packet_buffer_simple");

      function Libusb_Control_Transfer
        (Dev_Handle   : System.Address;
         Request_Type : Interfaces.Unsigned_8;
         BRequest     : Interfaces.Unsigned_8;
         WValue       : Interfaces.Unsigned_16;
         WIndex       : Interfaces.Unsigned_16;
         Data         : access Unsigned_Char;
         WLength      : Interfaces.Unsigned_16;
         Timeout      : Unsigned) return Int;  -- /usr/include/libusb-1.0/libusb.h:1748
      pragma Import (C, Libusb_Control_Transfer, "libusb_control_transfer");

      function Libusb_Bulk_Transfer
        (Dev_Handle    : System.Address;
         Endpoint      : Unsigned_Char;
         Data          : access Unsigned_Char;
         Length        : Int;
         Actual_Length : access Int;
         Timeout       : Unsigned) return Int;  -- /usr/include/libusb-1.0/libusb.h:1752
      pragma Import (C, Libusb_Bulk_Transfer, "libusb_bulk_transfer");

      function Libusb_Interrupt_Transfer
        (Dev_Handle    : System.Address;
         Endpoint      : Unsigned_Char;
         Data          : access Unsigned_Char;
         Length        : Int;
         Actual_Length : access Int;
         Timeout       : Unsigned) return Int;  -- /usr/include/libusb-1.0/libusb.h:1756
      pragma Import (C, Libusb_Interrupt_Transfer, "libusb_interrupt_transfer");

      function Libusb_Get_Descriptor
        (Dev_Handle : System.Address;
         Desc_Type  : Interfaces.Unsigned_8;
         Desc_Index : Interfaces.Unsigned_8;
         Data       : access Unsigned_Char;
         Length     : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1772
      pragma Import (C, Libusb_Get_Descriptor, "libusb_get_descriptor");

      function Libusb_Get_String_Descriptor
        (Dev_Handle : System.Address;
         Desc_Index : Interfaces.Unsigned_8;
         Langid     : Interfaces.Unsigned_16;
         Data       : access Unsigned_Char;
         Length     : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1794
      pragma Import (C, Libusb_Get_String_Descriptor, "libusb_get_string_descriptor");

      function Libusb_Get_String_Descriptor_Ascii
        (Dev_Handle : System.Address;
         Desc_Index : Interfaces.Unsigned_8;
         Data       : access Unsigned_Char;
         Length     : Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1802
      pragma Import (C, Libusb_Get_String_Descriptor_Ascii, "libusb_get_string_descriptor_ascii");

      function Libusb_Try_Lock_Events (Ctx : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1807
      pragma Import (C, Libusb_Try_Lock_Events, "libusb_try_lock_events");

      procedure Libusb_Lock_Events (Ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1808
      pragma Import (C, Libusb_Lock_Events, "libusb_lock_events");

      procedure Libusb_Unlock_Events (Ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1809
      pragma Import (C, Libusb_Unlock_Events, "libusb_unlock_events");

      function Libusb_Event_Handling_Ok (Ctx : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1810
      pragma Import (C, Libusb_Event_Handling_Ok, "libusb_event_handling_ok");

      function Libusb_Event_Handler_Active (Ctx : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1811
      pragma Import (C, Libusb_Event_Handler_Active, "libusb_event_handler_active");

      procedure Libusb_Interrupt_Event_Handler (Ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1812
      pragma Import (C, Libusb_Interrupt_Event_Handler, "libusb_interrupt_event_handler");

      procedure Libusb_Lock_Event_Waiters (Ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1813
      pragma Import (C, Libusb_Lock_Event_Waiters, "libusb_lock_event_waiters");

      procedure Libusb_Unlock_Event_Waiters (Ctx : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1814
      pragma Import (C, Libusb_Unlock_Event_Waiters, "libusb_unlock_event_waiters");

      function Libusb_Wait_For_Event (Ctx : System.Address; Tv : access Bits_Types_Struct_Timeval_H.Timeval) return Int;  -- /usr/include/libusb-1.0/libusb.h:1815
      pragma Import (C, Libusb_Wait_For_Event, "libusb_wait_for_event");

      function Libusb_Handle_Events_Timeout (Ctx : System.Address; Tv : access Bits_Types_Struct_Timeval_H.Timeval) return Int;  -- /usr/include/libusb-1.0/libusb.h:1817
      pragma Import (C, Libusb_Handle_Events_Timeout, "libusb_handle_events_timeout");

      function Libusb_Handle_Events_Timeout_Completed
        (Ctx       : System.Address;
         Tv        : access Bits_Types_Struct_Timeval_H.Timeval;
         Completed : access Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1819
      pragma Import (C, Libusb_Handle_Events_Timeout_Completed, "libusb_handle_events_timeout_completed");

      function Libusb_Handle_Events (Ctx : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1821
      pragma Import (C, Libusb_Handle_Events, "libusb_handle_events");

      function Libusb_Handle_Events_Completed (Ctx : System.Address; Completed : access Int) return Int;  -- /usr/include/libusb-1.0/libusb.h:1822
      pragma Import (C, Libusb_Handle_Events_Completed, "libusb_handle_events_completed");

      function Libusb_Handle_Events_Locked (Ctx : System.Address; Tv : access Bits_Types_Struct_Timeval_H.Timeval) return Int;  -- /usr/include/libusb-1.0/libusb.h:1823
      pragma Import (C, Libusb_Handle_Events_Locked, "libusb_handle_events_locked");

      function Libusb_Pollfds_Handle_Timeouts (Ctx : System.Address) return Int;  -- /usr/include/libusb-1.0/libusb.h:1825
      pragma Import (C, Libusb_Pollfds_Handle_Timeouts, "libusb_pollfds_handle_timeouts");

      function Libusb_Get_Next_Timeout (Ctx : System.Address; Tv : access Bits_Types_Struct_Timeval_H.Timeval) return Int;  -- /usr/include/libusb-1.0/libusb.h:1826
      pragma Import (C, Libusb_Get_Next_Timeout, "libusb_get_next_timeout");

      type Libusb_Pollfd is record
         Fd     : aliased Int;  -- /usr/include/libusb-1.0/libusb.h:1834
         Events : aliased Short;  -- /usr/include/libusb-1.0/libusb.h:1840
      end record;
      pragma Convention (C_Pass_By_Copy, Libusb_Pollfd);  -- /usr/include/libusb-1.0/libusb.h:1832

      type Libusb_Pollfd_Added_Cb is access procedure
        (Arg1 : Int;
         Arg2 : Short;
         Arg3 : System.Address);
      pragma Convention (C, Libusb_Pollfd_Added_Cb);  -- /usr/include/libusb-1.0/libusb.h:1853

      type Libusb_Pollfd_Removed_Cb is access procedure  (Arg1 : Int; Arg2 : System.Address);
      pragma Convention (C, Libusb_Pollfd_Removed_Cb);  -- /usr/include/libusb-1.0/libusb.h:1865

      function Libusb_Get_Pollfds (Ctx : System.Address) return System.Address;  -- /usr/include/libusb-1.0/libusb.h:1867
      pragma Import (C, Libusb_Get_Pollfds, "libusb_get_pollfds");

      procedure Libusb_Free_Pollfds (Pollfds : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1869
      pragma Import (C, Libusb_Free_Pollfds, "libusb_free_pollfds");

      procedure Libusb_Set_Pollfd_Notifiers
        (Ctx        : System.Address;
         Added_Cb   : Libusb_Pollfd_Added_Cb;
         Removed_Cb : Libusb_Pollfd_Removed_Cb;
         User_Data  : System.Address);  -- /usr/include/libusb-1.0/libusb.h:1870
      pragma Import (C, Libusb_Set_Pollfd_Notifiers, "libusb_set_pollfd_notifiers");

      subtype Libusb_Hotplug_Callback_Handle is Int;  -- /usr/include/libusb-1.0/libusb.h:1886

      type Libusb_Hotplug_Flag is
        (LIBUSB_HOTPLUG_NO_FLAGS,
         LIBUSB_HOTPLUG_ENUMERATE);
      pragma Convention (C, Libusb_Hotplug_Flag);  -- /usr/include/libusb-1.0/libusb.h:1899

      subtype Libusb_Hotplug_Event is Unsigned;
      LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED : constant Libusb_Hotplug_Event := 1;
      LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT : constant Libusb_Hotplug_Event := 2;  -- /usr/include/libusb-1.0/libusb.h:1914

      type Libusb_Hotplug_Callback_Fn is access function
        (Arg1 : System.Address;
         Arg2 : System.Address;
         Arg3 : Libusb_Hotplug_Event;
         Arg4 : System.Address) return Int;
      pragma Convention (C, Libusb_Hotplug_Callback_Fn);  -- /usr/include/libusb-1.0/libusb.h:1942

      function Libusb_Hotplug_Register_Callback
        (Ctx             : System.Address;
         Events          : Libusb_Hotplug_Event;
         Flags           : Libusb_Hotplug_Flag;
         Vendor_Id       : Int;
         Product_Id      : Int;
         Dev_Class       : Int;
         Cb_Fn           : Libusb_Hotplug_Callback_Fn;
         User_Data       : System.Address;
         Callback_Handle : access Hotplug_Callback_Handle) return Int;  -- /usr/include/libusb-1.0/libusb.h:1981
      pragma Import (C, Libusb_Hotplug_Register_Callback, "libusb_hotplug_register_callback");

      procedure Libusb_Hotplug_Deregister_Callback (Ctx : System.Address; Callback_Handle : Libusb_Hotplug_Callback_Handle);  -- /usr/include/libusb-1.0/libusb.h:2001
      pragma Import (C, Libusb_Hotplug_Deregister_Callback, "libusb_hotplug_deregister_callback");

   end Libusb_1_0_Libusb_H;
   -----------------
   -- cpu_to_le16 --
   -----------------
   use Libusb_1_0_Libusb_H;
   function Cpu_To_Le16
     (X : Interfaces.Unsigned_16)
      return Interfaces.Unsigned_16
   is
   begin
      return Libusb_cpu_to_le16 (X);
   end Cpu_To_Le16;


   procedure Initialize (Ctx : in out Context) is
   begin
      Ret2exception (Libusb_Init (Ctx.Ctx'Address));
   end;

   procedure Finalize   (Ctx : in out Context) is
   begin
      Libusb_Exit (Ctx.Ctx);
   end;


   ---------------
   -- set_debug --
   ---------------

   procedure Set_Debug (Ctx : Context; Level : Int) is
   begin
      Libusb_Set_Debug (Ctx.Ctx, Level);
   end Set_Debug;

   -----------------
   -- get_version --
   -----------------

   function Get_Version return access constant Version is
   begin
      return Libusb_Get_Version;
   end Get_Version;

   --------------------
   -- has_capability --
   --------------------

   function Has_Capability (Capability : Interfaces.Unsigned_32) return Int is
   begin
      return Libusb_Has_Capability(Capability);
   end Has_Capability;

   ----------------
   -- error_name --
   ----------------

   function Error_Name
     (Errcode : Int)
      return Interfaces.C.Strings.Chars_Ptr
   is
   begin
      return Libusb_Error_Name (Errcode);
   end Error_Name;

   ---------------
   -- setlocale --
   ---------------

   procedure Setlocale (Locale : Interfaces.C.Strings.Chars_Ptr) is
   begin
      Ret2exception (Libusb_Setlocale (Locale));
   end Setlocale;

   --------------
   -- strerror --
   --------------

   function Strerror
     (Errcode : Error)
      return Interfaces.C.Strings.Chars_Ptr
   is
   begin
      return Libusb_Strerror (Errcode);
   end Strerror;

   ---------------------
   -- get_device_list --
   ---------------------

   function Get_Device_List
     (ctx : context; list : System.Address) return size_t
   is
   begin
      return Libusb_Get_Device_List (Ctx.Ctx, List);
   end Get_Device_List;

   ----------------------
   -- free_device_list --
   ----------------------

   procedure Free_Device_List (List : System.Address; Unref_Devices : Int) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_device_list unimplemented");
      raise Program_Error with "Unimplemented procedure free_device_list";
   end Free_Device_List;

   ----------------
   -- ref_device --
   ----------------

   function Ref_Device (Dev : System.Address) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "ref_device unimplemented");
      return raise Program_Error with "Unimplemented function ref_device";
   end Ref_Device;

   ------------------
   -- unref_device --
   ------------------

   procedure Unref_Device (Dev : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unref_device unimplemented");
      raise Program_Error with "Unimplemented procedure unref_device";
   end Unref_Device;

   -----------------------
   -- get_configuration --
   -----------------------

   function Get_Configuration
     (Dev    : System.Address;
      Config : access Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_configuration unimplemented");
      return raise Program_Error with "Unimplemented function get_configuration";
   end Get_Configuration;

   ---------------------------
   -- get_device_descriptor --
   ---------------------------

   function Get_Device_Descriptor
     (Dev  : System.Address;
      Desc : access Device_Descriptor)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_device_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_device_descriptor";
   end Get_Device_Descriptor;

   ----------------------------------
   -- get_active_config_descriptor --
   ----------------------------------

   function Get_Active_Config_Descriptor
     (Dev    : System.Address;
      Config : System.Address)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_active_config_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_active_config_descriptor";
   end Get_Active_Config_Descriptor;

   ---------------------------
   -- get_config_descriptor --
   ---------------------------

   function Get_Config_Descriptor
     (Dev          : System.Address;
      Config_Index : Interfaces.Unsigned_8;
      Config       : System.Address)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_config_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_config_descriptor";
   end Get_Config_Descriptor;

   ------------------------------------
   -- get_config_descriptor_by_value --
   ------------------------------------

   function Get_Config_Descriptor_By_Value
     (Dev                 : System.Address;
      BConfigurationValue : Interfaces.Unsigned_8;
      Config              : System.Address)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_config_descriptor_by_value unimplemented");
      return raise Program_Error with "Unimplemented function get_config_descriptor_by_value";
   end Get_Config_Descriptor_By_Value;

   ----------------------------
   -- free_config_descriptor --
   ----------------------------

   procedure Free_Config_Descriptor (Config : access Config_Descriptor) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_config_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure free_config_descriptor";
   end Free_Config_Descriptor;

   ------------------------------------------
   -- get_ss_endpoint_companion_descriptor --
   ------------------------------------------

   function Get_Ss_Endpoint_Companion_Descriptor
     (ctx : context;
      endpoint : access constant endpoint_descriptor;
      ep_comp  : System.Address) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_ss_endpoint_companion_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_ss_endpoint_companion_descriptor";
   end Get_Ss_Endpoint_Companion_Descriptor;

   -------------------------------------------
   -- free_ss_endpoint_companion_descriptor --
   -------------------------------------------

   procedure Free_Ss_Endpoint_Companion_Descriptor
     (Ep_Comp : access Ss_Endpoint_Companion_Descriptor)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_ss_endpoint_companion_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure free_ss_endpoint_companion_descriptor";
   end Free_Ss_Endpoint_Companion_Descriptor;

   ------------------------
   -- get_bos_descriptor --
   ------------------------

   function Get_Bos_Descriptor
     (Dev_Handle : System.Address;
      Bos        : System.Address)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_bos_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_bos_descriptor";
   end Get_Bos_Descriptor;

   -------------------------
   -- free_bos_descriptor --
   -------------------------

   procedure Free_Bos_Descriptor (Bos : access Bos_Descriptor) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_bos_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure free_bos_descriptor";
   end Free_Bos_Descriptor;

   --------------------------------------
   -- get_usb_2_0_extension_descriptor --
   --------------------------------------

   function Get_Usb_2_0_Extension_Descriptor
     (ctx : context;
      dev_cap : access bos_dev_capability_descriptor;
      usb_2_0_extension : System.Address) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_usb_2_0_extension_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_usb_2_0_extension_descriptor";
   end Get_Usb_2_0_Extension_Descriptor;

   ---------------------------------------
   -- free_usb_2_0_extension_descriptor --
   ---------------------------------------

   procedure Free_Usb_2_0_Extension_Descriptor
     (Usb_2_0_Extension : access Usb_2_0_Extension_Descriptor)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_usb_2_0_extension_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure free_usb_2_0_extension_descriptor";
   end Free_Usb_2_0_Extension_Descriptor;

   ---------------------------------------------
   -- get_ss_usb_device_capability_descriptor --
   ---------------------------------------------

   function Get_Ss_Usb_Device_Capability_Descriptor
     (ctx : context;
      dev_cap : access bos_dev_capability_descriptor;
      ss_usb_device_cap : System.Address) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_ss_usb_device_capability_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_ss_usb_device_capability_descriptor";
   end Get_Ss_Usb_Device_Capability_Descriptor;

   ----------------------------------------------
   -- free_ss_usb_device_capability_descriptor --
   ----------------------------------------------

   procedure Free_Ss_Usb_Device_Capability_Descriptor
     (Ss_Usb_Device_Cap : access Ss_Usb_Device_Capability_Descriptor)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_ss_usb_device_capability_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure free_ss_usb_device_capability_descriptor";
   end Free_Ss_Usb_Device_Capability_Descriptor;

   ---------------------------------
   -- get_container_id_descriptor --
   ---------------------------------

   function Get_Container_Id_Descriptor
     (ctx : context;
      dev_cap : access bos_dev_capability_descriptor;
      container_id : System.Address) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_container_id_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_container_id_descriptor";
   end Get_Container_Id_Descriptor;

   ----------------------------------
   -- free_container_id_descriptor --
   ----------------------------------

   procedure Free_Container_Id_Descriptor
     (Container_Id : access Container_Id_Descriptor)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_container_id_descriptor unimplemented");
      raise Program_Error with "Unimplemented procedure free_container_id_descriptor";
   end Free_Container_Id_Descriptor;

   --------------------
   -- get_bus_number --
   --------------------

   function Get_Bus_Number
     (Dev : System.Address)
      return Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_bus_number unimplemented");
      return raise Program_Error with "Unimplemented function get_bus_number";
   end Get_Bus_Number;

   ---------------------
   -- get_port_number --
   ---------------------

   function Get_Port_Number
     (Dev : System.Address)
      return Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_port_number unimplemented");
      return raise Program_Error with "Unimplemented function get_port_number";
   end Get_Port_Number;

   ----------------------
   -- get_port_numbers --
   ----------------------

   function Get_Port_Numbers
     (Dev              : System.Address;
      Port_Numbers     : access Interfaces.Unsigned_8;
      Port_Numbers_Len : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_port_numbers unimplemented");
      return raise Program_Error with "Unimplemented function get_port_numbers";
   end Get_Port_Numbers;

   -------------------
   -- get_port_path --
   -------------------

   function Get_Port_Path
     (ctx : context;
      dev : System.Address;
      path : access Interfaces.Unsigned_8;
      path_length : Interfaces.Unsigned_8) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_port_path unimplemented");
      return raise Program_Error with "Unimplemented function get_port_path";
   end Get_Port_Path;

   ----------------
   -- get_parent --
   ----------------

   function Get_Parent (Dev : System.Address) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_parent unimplemented");
      return raise Program_Error with "Unimplemented function get_parent";
   end Get_Parent;

   ------------------------
   -- get_device_address --
   ------------------------

   function Get_Device_Address
     (Dev : System.Address)
      return Interfaces.Unsigned_8
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_device_address unimplemented");
      return raise Program_Error with "Unimplemented function get_device_address";
   end Get_Device_Address;

   ----------------------
   -- get_device_speed --
   ----------------------

   function Get_Device_Speed (Dev : System.Address) return Int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_device_speed unimplemented");
      return raise Program_Error with "Unimplemented function get_device_speed";
   end Get_Device_Speed;

   -------------------------
   -- get_max_packet_size --
   -------------------------

   function Get_Max_Packet_Size
     (Dev      : System.Address;
      Endpoint : Unsigned_Char)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_max_packet_size unimplemented");
      return raise Program_Error with "Unimplemented function get_max_packet_size";
   end Get_Max_Packet_Size;

   -----------------------------
   -- get_max_iso_packet_size --
   -----------------------------

   function Get_Max_Iso_Packet_Size
     (Dev      : System.Address;
      Endpoint : Unsigned_Char)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_max_iso_packet_size unimplemented");
      return raise Program_Error with "Unimplemented function get_max_iso_packet_size";
   end Get_Max_Iso_Packet_Size;

   ----------
   -- open --
   ----------

   function Open
     (Dev        : System.Address;
      Dev_Handle : System.Address)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open unimplemented");
      return raise Program_Error with "Unimplemented function open";
   end Open;

   -----------
   -- close --
   -----------

   procedure Close (Dev_Handle : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      raise Program_Error with "Unimplemented procedure close";
   end Close;

   ----------------
   -- get_device --
   ----------------

   function Get_Device (Dev_Handle : System.Address) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_device unimplemented");
      return raise Program_Error with "Unimplemented function get_device";
   end Get_Device;

   -----------------------
   -- set_configuration --
   -----------------------

   function Set_Configuration
     (Dev_Handle    : System.Address;
      Configuration : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_configuration unimplemented");
      return raise Program_Error with "Unimplemented function set_configuration";
   end Set_Configuration;

   ---------------------
   -- claim_interface --
   ---------------------

   function Claim_Interface
     (Dev_Handle       : System.Address;
      Interface_Number : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "claim_interface unimplemented");
      return raise Program_Error with "Unimplemented function claim_interface";
   end Claim_Interface;

   -----------------------
   -- release_interface --
   -----------------------

   function Release_Interface
     (Dev_Handle       : System.Address;
      Interface_Number : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "release_interface unimplemented");
      return raise Program_Error with "Unimplemented function release_interface";
   end Release_Interface;

   ------------------------------
   -- open_device_with_vid_pid --
   ------------------------------

   function Open_Device_With_Vid_Pid
     (ctx : context;
      vendor_id : Interfaces.Unsigned_16;
      product_id : Interfaces.Unsigned_16) return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "open_device_with_vid_pid unimplemented");
      return raise Program_Error with "Unimplemented function open_device_with_vid_pid";
   end Open_Device_With_Vid_Pid;

   -------------------------------
   -- set_interface_alt_setting --
   -------------------------------

   function Set_Interface_Alt_Setting
     (Dev_Handle        : System.Address;
      Interface_Number  : Int;
      Alternate_Setting : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_interface_alt_setting unimplemented");
      return raise Program_Error with "Unimplemented function set_interface_alt_setting";
   end Set_Interface_Alt_Setting;

   ----------------
   -- clear_halt --
   ----------------

   function Clear_Halt
     (Dev_Handle : System.Address;
      Endpoint   : Unsigned_Char)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clear_halt unimplemented");
      return raise Program_Error with "Unimplemented function clear_halt";
   end Clear_Halt;

   ------------------
   -- reset_device --
   ------------------

   function Reset_Device (Dev_Handle : System.Address) return Int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "reset_device unimplemented");
      return raise Program_Error with "Unimplemented function reset_device";
   end Reset_Device;

   -------------------
   -- alloc_streams --
   -------------------

   function Alloc_Streams
     (Dev_Handle    : System.Address;
      Num_Streams   : Interfaces.Unsigned_32;
      Endpoints     : access Unsigned_Char;
      Num_Endpoints : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_streams unimplemented");
      return raise Program_Error with "Unimplemented function alloc_streams";
   end Alloc_Streams;

   ------------------
   -- free_streams --
   ------------------

   function Free_Streams
     (Dev_Handle    : System.Address;
      Endpoints     : access Unsigned_Char;
      Num_Endpoints : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_streams unimplemented");
      return raise Program_Error with "Unimplemented function free_streams";
   end Free_Streams;

   -------------------
   -- dev_mem_alloc --
   -------------------

   function Dev_Mem_Alloc
     (Dev_Handle : System.Address;
      Length     : Size_T)
      return access Unsigned_Char
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dev_mem_alloc unimplemented");
      return raise Program_Error with "Unimplemented function dev_mem_alloc";
   end Dev_Mem_Alloc;

   ------------------
   -- dev_mem_free --
   ------------------

   function Dev_Mem_Free
     (Dev_Handle : System.Address;
      Buffer     : access Unsigned_Char;
      Length     : Size_T)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dev_mem_free unimplemented");
      return raise Program_Error with "Unimplemented function dev_mem_free";
   end Dev_Mem_Free;

   --------------------------
   -- kernel_driver_active --
   --------------------------

   function Kernel_Driver_Active
     (Dev_Handle       : System.Address;
      Interface_Number : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "kernel_driver_active unimplemented");
      return raise Program_Error with "Unimplemented function kernel_driver_active";
   end Kernel_Driver_Active;

   --------------------------
   -- detach_kernel_driver --
   --------------------------

   function Detach_Kernel_Driver
     (Dev_Handle       : System.Address;
      Interface_Number : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "detach_kernel_driver unimplemented");
      return raise Program_Error with "Unimplemented function detach_kernel_driver";
   end Detach_Kernel_Driver;

   --------------------------
   -- attach_kernel_driver --
   --------------------------

   function Attach_Kernel_Driver
     (Dev_Handle       : System.Address;
      Interface_Number : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "attach_kernel_driver unimplemented");
      return raise Program_Error with "Unimplemented function attach_kernel_driver";
   end Attach_Kernel_Driver;

   -----------------------------------
   -- set_auto_detach_kernel_driver --
   -----------------------------------

   function Set_Auto_Detach_Kernel_Driver
     (Dev_Handle : System.Address;
      Enable     : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_auto_detach_kernel_driver unimplemented");
      return raise Program_Error with "Unimplemented function set_auto_detach_kernel_driver";
   end Set_Auto_Detach_Kernel_Driver;

   -------------------------------
   -- control_transfer_get_data --
   -------------------------------

   function Control_Transfer_Get_Data
     (Transfe : access Transfer)
      return access Unsigned_Char
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "control_transfer_get_data unimplemented");
      return raise Program_Error with "Unimplemented function control_transfer_get_data";
   end Control_Transfer_Get_Data;

   --------------------------------
   -- control_transfer_get_setup --
   --------------------------------

   function Control_Transfer_Get_Setup
     (Transfe : access Transfer)
      return access Control_Setup
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "control_transfer_get_setup unimplemented");
      return raise Program_Error with "Unimplemented function control_transfer_get_setup";
   end Control_Transfer_Get_Setup;

   ------------------------
   -- fill_control_setup --
   ------------------------

   procedure Fill_Control_Setup
     (Buffer        : access Unsigned_Char;
      BmRequestType : Interfaces.Unsigned_8;
      BRequest      : Interfaces.Unsigned_8;
      WValue        : Interfaces.Unsigned_16;
      WIndex        : Interfaces.Unsigned_16;
      WLength       : Interfaces.Unsigned_16)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_control_setup unimplemented");
      raise Program_Error with "Unimplemented procedure fill_control_setup";
   end Fill_Control_Setup;

   --------------------
   -- alloc_transfer --
   --------------------

   function Alloc_Transfer (Iso_Packets : Int) return access Transfer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "alloc_transfer unimplemented");
      return raise Program_Error with "Unimplemented function alloc_transfer";
   end Alloc_Transfer;

   ---------------------
   -- submit_transfer --
   ---------------------

   function Submit_Transfer (Transfe : access Transfer) return Int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "submit_transfer unimplemented");
      return raise Program_Error with "Unimplemented function submit_transfer";
   end Submit_Transfer;

   ---------------------
   -- cancel_transfer --
   ---------------------

   function Cancel_Transfer (Transfe : access Transfer) return Int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "cancel_transfer unimplemented");
      return raise Program_Error with "Unimplemented function cancel_transfer";
   end Cancel_Transfer;

   -------------------
   -- free_transfer --
   -------------------

   procedure Free_Transfer (Transfe : access Transfer) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_transfer unimplemented");
      raise Program_Error with "Unimplemented procedure free_transfer";
   end Free_Transfer;

   ----------------------------
   -- transfer_set_stream_id --
   ----------------------------

   procedure Transfer_Set_Stream_Id
     (Transfe   : access Transfer;
      Stream_Id : Interfaces.Unsigned_32)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "transfer_set_stream_id unimplemented");
      raise Program_Error with "Unimplemented procedure transfer_set_stream_id";
   end Transfer_Set_Stream_Id;

   ----------------------------
   -- transfer_get_stream_id --
   ----------------------------

   function Transfer_Get_Stream_Id
     (Transfe : access Transfer)
      return Interfaces.Unsigned_32
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "transfer_get_stream_id unimplemented");
      return raise Program_Error with "Unimplemented function transfer_get_stream_id";
   end Transfer_Get_Stream_Id;

   ---------------------------
   -- fill_control_transfer --
   ---------------------------

   procedure Fill_Control_Transfer
     (Transfe    : access Transfer;
      Dev_Handle : System.Address;
      Buffer     : access Unsigned_Char;
      Callback   : Transfer_Cb_Fn;
      User_Data  : System.Address;
      Timeout    : Unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_control_transfer unimplemented");
      raise Program_Error with "Unimplemented procedure fill_control_transfer";
   end Fill_Control_Transfer;

   ------------------------
   -- fill_bulk_transfer --
   ------------------------

   procedure Fill_Bulk_Transfer
     (Transfe    : access Transfer;
      Dev_Handle : System.Address;
      Endpoint   : Unsigned_Char;
      Buffer     : access Unsigned_Char;
      Length     : Int;
      Callback   : Transfer_Cb_Fn;
      User_Data  : System.Address;
      Timeout    : Unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_bulk_transfer unimplemented");
      raise Program_Error with "Unimplemented procedure fill_bulk_transfer";
   end Fill_Bulk_Transfer;

   -------------------------------
   -- fill_bulk_stream_transfer --
   -------------------------------

   procedure Fill_Bulk_Stream_Transfer
     (Transfe    : access Transfer;
      Dev_Handle : System.Address;
      Endpoint   : Unsigned_Char;
      Stream_Id  : Interfaces.Unsigned_32;
      Buffer     : access Unsigned_Char;
      Length     : Int;
      Callback   : Transfer_Cb_Fn;
      User_Data  : System.Address;
      Timeout    : Unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_bulk_stream_transfer unimplemented");
      raise Program_Error with "Unimplemented procedure fill_bulk_stream_transfer";
   end Fill_Bulk_Stream_Transfer;

   -----------------------------
   -- fill_interrupt_transfer --
   -----------------------------

   procedure Fill_Interrupt_Transfer
     (Transfe    : access Transfer;
      Dev_Handle : System.Address;
      Endpoint   : Unsigned_Char;
      Buffer     : access Unsigned_Char;
      Length     : Int;
      Callback   : Transfer_Cb_Fn;
      User_Data  : System.Address;
      Timeout    : Unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_interrupt_transfer unimplemented");
      raise Program_Error with "Unimplemented procedure fill_interrupt_transfer";
   end Fill_Interrupt_Transfer;

   -----------------------
   -- fill_iso_transfer --
   -----------------------

   procedure Fill_Iso_Transfer
     (Transfe         : access Transfer;
      Dev_Handle      : System.Address;
      Endpoint        : Unsigned_Char;
      Buffer          : access Unsigned_Char;
      Length          : Int;
      Num_Iso_Packets : Int;
      Callback        : Transfer_Cb_Fn;
      User_Data       : System.Address;
      Timeout         : Unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "fill_iso_transfer unimplemented");
      raise Program_Error with "Unimplemented procedure fill_iso_transfer";
   end Fill_Iso_Transfer;

   ----------------------------
   -- set_iso_packet_lengths --
   ----------------------------

   procedure Set_Iso_Packet_Lengths
     (Transfe : access Transfer;
      Length  : Unsigned)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_iso_packet_lengths unimplemented");
      raise Program_Error with "Unimplemented procedure set_iso_packet_lengths";
   end Set_Iso_Packet_Lengths;

   ---------------------------
   -- get_iso_packet_buffer --
   ---------------------------

   function Get_Iso_Packet_Buffer
     (Transfe : access Transfer;
      Packet  : Unsigned)
      return access Unsigned_Char
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_iso_packet_buffer unimplemented");
      return raise Program_Error with "Unimplemented function get_iso_packet_buffer";
   end Get_Iso_Packet_Buffer;

   ----------------------------------
   -- get_iso_packet_buffer_simple --
   ----------------------------------

   function Get_Iso_Packet_Buffer_Simple
     (Transfe : access Transfer;
      Packet  : Unsigned)
      return access Unsigned_Char
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_iso_packet_buffer_simple unimplemented");
      return raise Program_Error with "Unimplemented function get_iso_packet_buffer_simple";
   end Get_Iso_Packet_Buffer_Simple;

   ----------------------
   -- control_transfer --
   ----------------------

   function Control_Transfer
     (Dev_Handle   : System.Address;
      Request_Type : Interfaces.Unsigned_8;
      BRequest     : Interfaces.Unsigned_8;
      WValue       : Interfaces.Unsigned_16;
      WIndex       : Interfaces.Unsigned_16;
      Data         : access Unsigned_Char;
      WLength      : Interfaces.Unsigned_16;
      Timeout      : Unsigned)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "control_transfer unimplemented");
      return raise Program_Error with "Unimplemented function control_transfer";
   end Control_Transfer;

   -------------------
   -- bulk_transfer --
   -------------------

   function Bulk_Transfer
     (Dev_Handle    : System.Address;
      Endpoint      : Unsigned_Char;
      Data          : access Unsigned_Char;
      Length        : Int;
      Actual_Length : access Int;
      Timeout       : Unsigned)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "bulk_transfer unimplemented");
      return raise Program_Error with "Unimplemented function bulk_transfer";
   end Bulk_Transfer;

   ------------------------
   -- interrupt_transfer --
   ------------------------

   function Interrupt_Transfer
     (Dev_Handle    : System.Address;
      Endpoint      : Unsigned_Char;
      Data          : access Unsigned_Char;
      Length        : Int;
      Actual_Length : access Int;
      Timeout       : Unsigned)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "interrupt_transfer unimplemented");
      return raise Program_Error with "Unimplemented function interrupt_transfer";
   end Interrupt_Transfer;

   --------------------
   -- get_descriptor --
   --------------------

   function Get_Descriptor
     (Dev_Handle : System.Address;
      Desc_Type  : Interfaces.Unsigned_8;
      Desc_Index : Interfaces.Unsigned_8;
      Data       : access Unsigned_Char;
      Length     : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_descriptor";
   end Get_Descriptor;

   ---------------------------
   -- get_string_descriptor --
   ---------------------------

   function Get_String_Descriptor
     (Dev_Handle : System.Address;
      Desc_Index : Interfaces.Unsigned_8;
      Langid     : Interfaces.Unsigned_16;
      Data       : access Unsigned_Char;
      Length     : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_string_descriptor unimplemented");
      return raise Program_Error with "Unimplemented function get_string_descriptor";
   end Get_String_Descriptor;

   ---------------------------------
   -- get_string_descriptor_ascii --
   ---------------------------------

   function Get_String_Descriptor_Ascii
     (Dev_Handle : System.Address;
      Desc_Index : Interfaces.Unsigned_8;
      Data       : access Unsigned_Char;
      Length     : Int)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_string_descriptor_ascii unimplemented");
      return raise Program_Error with "Unimplemented function get_string_descriptor_ascii";
   end Get_String_Descriptor_Ascii;

   ---------------------
   -- try_lock_events --
   ---------------------

   function Try_Lock_Events (ctx : context) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "try_lock_events unimplemented");
      return raise Program_Error with "Unimplemented function try_lock_events";
   end Try_Lock_Events;

   -----------------
   -- lock_events --
   -----------------

   procedure Lock_Events (ctx : context) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "lock_events unimplemented");
      raise Program_Error with "Unimplemented procedure lock_events";
   end Lock_Events;

   -------------------
   -- unlock_events --
   -------------------

   procedure Unlock_Events (ctx : context) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unlock_events unimplemented");
      raise Program_Error with "Unimplemented procedure unlock_events";
   end Unlock_Events;

   -----------------------
   -- event_handling_ok --
   -----------------------

   function Event_Handling_Ok (ctx : context) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "event_handling_ok unimplemented");
      return raise Program_Error with "Unimplemented function event_handling_ok";
   end Event_Handling_Ok;

   --------------------------
   -- event_handler_active --
   --------------------------

   function Event_Handler_Active (ctx : context) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "event_handler_active unimplemented");
      return raise Program_Error with "Unimplemented function event_handler_active";
   end Event_Handler_Active;

   -----------------------------
   -- interrupt_event_handler --
   -----------------------------

   procedure Interrupt_Event_Handler (ctx : context) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "interrupt_event_handler unimplemented");
      raise Program_Error with "Unimplemented procedure interrupt_event_handler";
   end Interrupt_Event_Handler;

   ------------------------
   -- lock_event_waiters --
   ------------------------

   procedure Lock_Event_Waiters (ctx : context) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "lock_event_waiters unimplemented");
      raise Program_Error with "Unimplemented procedure lock_event_waiters";
   end Lock_Event_Waiters;

   --------------------------
   -- unlock_event_waiters --
   --------------------------

   procedure Unlock_Event_Waiters (ctx : context) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unlock_event_waiters unimplemented");
      raise Program_Error with "Unimplemented procedure unlock_event_waiters";
   end Unlock_Event_Waiters;

   --------------------
   -- wait_for_event --
   --------------------

   function Wait_For_Event (ctx : context; tv : Duration) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "wait_for_event unimplemented");
      return raise Program_Error with "Unimplemented function wait_for_event";
   end Wait_For_Event;

   ---------------------------
   -- handle_events_timeout --
   ---------------------------

   function Handle_Events_Timeout
     (ctx : context; tv : Duration) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "handle_events_timeout unimplemented");
      return raise Program_Error with "Unimplemented function handle_events_timeout";
   end Handle_Events_Timeout;

   -------------------------------------
   -- handle_events_timeout_completed --
   -------------------------------------

   function Handle_Events_Timeout_Completed
     (ctx : context;
      tv : Duration;
      completed : access int) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "handle_events_timeout_completed unimplemented");
      return raise Program_Error with "Unimplemented function handle_events_timeout_completed";
   end Handle_Events_Timeout_Completed;

   -------------------
   -- handle_events --
   -------------------

   function Handle_Events (ctx : context) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "handle_events unimplemented");
      return raise Program_Error with "Unimplemented function handle_events";
   end Handle_Events;

   -----------------------------
   -- handle_events_completed --
   -----------------------------

   function Handle_Events_Completed
     (ctx : context; completed : access int) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "handle_events_completed unimplemented");
      return raise Program_Error with "Unimplemented function handle_events_completed";
   end Handle_Events_Completed;

   --------------------------
   -- handle_events_locked --
   --------------------------

   function Handle_Events_Locked
     (ctx : context; tv : Duration) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "handle_events_locked unimplemented");
      return raise Program_Error with "Unimplemented function handle_events_locked";
   end Handle_Events_Locked;

   -----------------------------
   -- pollfds_handle_timeouts --
   -----------------------------

   function Pollfds_Handle_Timeouts (ctx : context) return int is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "pollfds_handle_timeouts unimplemented");
      return raise Program_Error with "Unimplemented function pollfds_handle_timeouts";
   end Pollfds_Handle_Timeouts;

   ----------------------
   -- get_next_timeout --
   ----------------------

   function Get_Next_Timeout
     (Ctx : System.Address;
      Tv  : Duration)
      return Int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_next_timeout unimplemented");
      return raise Program_Error with "Unimplemented function get_next_timeout";
   end Get_Next_Timeout;

   -----------------
   -- get_pollfds --
   -----------------

   function Get_Pollfds (ctx : context) return System.Address is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_pollfds unimplemented");
      return raise Program_Error with "Unimplemented function get_pollfds";
   end Get_Pollfds;

   ------------------
   -- free_pollfds --
   ------------------

   procedure Free_Pollfds (Pollfds : System.Address) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free_pollfds unimplemented");
      raise Program_Error with "Unimplemented procedure free_pollfds";
   end Free_Pollfds;

   --------------------------
   -- set_pollfd_notifiers --
   --------------------------

   procedure Set_Pollfd_Notifiers
     (ctx : context;
      added_cb : pollfd_added_cb;
      removed_cb : pollfd_removed_cb;
      user_data  : System.Address)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_pollfd_notifiers unimplemented");
      raise Program_Error with "Unimplemented procedure set_pollfd_notifiers";
   end Set_Pollfd_Notifiers;

   -------------------------------
   -- hotplug_register_callback --
   -------------------------------

   function Hotplug_Register_Callback
     (ctx : context;
      events : hotplug_event;
      flags : hotplug_flag;
      vendor_id : int;
      product_id : int;
      dev_class : int;
      cb_fn : hotplug_callback_fn;
      user_data : System.Address;
      callback_handle : access hotplug_callback_handle) return int
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "hotplug_register_callback unimplemented");
      return raise Program_Error with "Unimplemented function hotplug_register_callback";
   end Hotplug_Register_Callback;

   ---------------------------------
   -- hotplug_deregister_callback --
   ---------------------------------

   procedure Hotplug_Deregister_Callback
     (ctx : context; callback_handle : hotplug_callback_handle)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "hotplug_deregister_callback unimplemented");
      raise Program_Error with "Unimplemented procedure hotplug_deregister_callback";
   end Hotplug_Deregister_Callback;

end USB;
