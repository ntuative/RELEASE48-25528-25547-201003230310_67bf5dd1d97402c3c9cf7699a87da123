package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_642;
         param1["bitmap"] = const_594;
         param1["border"] = const_673;
         param1["border_notify"] = const_1168;
         param1["button"] = const_373;
         param1["button_thick"] = const_705;
         param1["button_icon"] = const_1285;
         param1["button_group_left"] = const_708;
         param1["button_group_center"] = const_654;
         param1["button_group_right"] = const_630;
         param1["canvas"] = const_651;
         param1["checkbox"] = const_608;
         param1["closebutton"] = const_997;
         param1["container"] = const_336;
         param1["container_button"] = const_538;
         param1["display_object_wrapper"] = const_696;
         param1["dropmenu"] = const_388;
         param1["dropmenu_item"] = const_378;
         param1["frame"] = const_330;
         param1["frame_notify"] = const_1167;
         param1["header"] = const_727;
         param1["icon"] = const_918;
         param1["itemgrid"] = const_954;
         param1["itemgrid_horizontal"] = const_363;
         param1["itemgrid_vertical"] = const_516;
         param1["itemlist"] = const_1016;
         param1["itemlist_horizontal"] = const_286;
         param1["itemlist_vertical"] = const_295;
         param1["maximizebox"] = const_1166;
         param1["menu"] = const_1203;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_1013;
         param1["minimizebox"] = const_1158;
         param1["notify"] = const_1366;
         param1["null"] = const_513;
         param1["password"] = const_508;
         param1["radiobutton"] = const_543;
         param1["region"] = const_379;
         param1["restorebox"] = const_1388;
         param1["scaler"] = const_739;
         param1["scaler_horizontal"] = const_1356;
         param1["scaler_vertical"] = const_1329;
         param1["scrollbar_horizontal"] = const_460;
         param1["scrollbar_vertical"] = const_650;
         param1["scrollbar_slider_button_up"] = const_984;
         param1["scrollbar_slider_button_down"] = const_804;
         param1["scrollbar_slider_button_left"] = const_892;
         param1["scrollbar_slider_button_right"] = const_857;
         param1["scrollbar_slider_bar_horizontal"] = const_861;
         param1["scrollbar_slider_bar_vertical"] = const_867;
         param1["scrollbar_slider_track_horizontal"] = const_873;
         param1["scrollbar_slider_track_vertical"] = const_999;
         param1["scrollable_itemlist"] = const_1309;
         param1["scrollable_itemlist_vertical"] = const_372;
         param1["scrollable_itemlist_horizontal"] = const_836;
         param1["selector"] = const_742;
         param1["selector_list"] = const_707;
         param1["submenu"] = const_1013;
         param1["tab_button"] = const_522;
         param1["tab_container_button"] = const_798;
         param1["tab_context"] = const_457;
         param1["tab_content"] = const_834;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_720;
         param1["input"] = const_579;
         param1["toolbar"] = const_1212;
         param1["tooltip"] = const_284;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
