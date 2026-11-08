--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package ESPIDF.Timer
  with Preelaborate
is

   function esp_timer_early_init return esp_err_t
   with Import, Convention => C, External_Name => "esp_timer_early_init";

   procedure esp_timer_early_init;

   function esp_timer_init return esp_err_t
   with Import, Convention => C, External_Name => "esp_timer_init";

   procedure esp_timer_init;

   function esp_timer_get_time return int64_t
   with Import, Convention => C, External_Name => "esp_timer_get_time";

end ESPIDF.Timer;
