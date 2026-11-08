--
--  Copyright (C) 2026, Vadim Godunko
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with ESPIDF.Ada_ESP_Check_Error;

package body ESPIDF.Timer is

   --------------------------
   -- esp_timer_early_init --
   --------------------------

   procedure esp_timer_early_init is
   begin
      ESPIDF.Ada_ESP_Check_Error.Check (ESPIDF.Timer.esp_timer_early_init);
   end esp_timer_early_init;

end ESPIDF.Timer;
