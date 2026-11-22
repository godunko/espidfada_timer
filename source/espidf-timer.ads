--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

private with ESPIDF.Constants.Timer;

package ESPIDF.Timer is

   type esp_timer_create_args_t is limited private;

   function esp_timer_early_init return esp_err_t
   with Import, Convention => C, External_Name => "esp_timer_early_init";

   procedure esp_timer_early_init;

   function esp_timer_init return esp_err_t
   with Import, Convention => C, External_Name => "esp_timer_init";

   procedure esp_timer_init;

   function esp_timer_get_time return int64_t
   with Import, Convention => C, External_Name => "esp_timer_get_time";

private

   type esp_timer_create_args_t is
     new C_Object_Storage
          (1 .. ESPIDF.Constants.Timer.sizeof_esp_timer_create_args_t)
   with
     Convention              => C,
     Alignment               =>
       ESPIDF.Constants.Timer.alignof_esp_timer_create_args_t,
     Default_Component_Value => 0;

end ESPIDF.Timer;
