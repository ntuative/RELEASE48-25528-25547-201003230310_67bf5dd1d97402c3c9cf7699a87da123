package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_124;
         param1["bound_to_parent_rect"] = const_83;
         param1["child_window"] = const_985;
         param1["embedded_controller"] = const_287;
         param1["resize_to_accommodate_children"] = const_60;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_643;
         param1["mouse_dragging_target"] = const_205;
         param1["mouse_dragging_trigger"] = const_283;
         param1["mouse_scaling_target"] = const_237;
         param1["mouse_scaling_trigger"] = const_476;
         param1["horizontal_mouse_scaling_trigger"] = const_222;
         param1["vertical_mouse_scaling_trigger"] = const_227;
         param1["observe_parent_input_events"] = const_1023;
         param1["optimize_region_to_layout_size"] = const_407;
         param1["parent_window"] = const_1021;
         param1["relative_horizontal_scale_center"] = const_154;
         param1["relative_horizontal_scale_fixed"] = const_126;
         param1["relative_horizontal_scale_move"] = const_282;
         param1["relative_horizontal_scale_strech"] = const_235;
         param1["relative_scale_center"] = const_871;
         param1["relative_scale_fixed"] = const_647;
         param1["relative_scale_move"] = const_914;
         param1["relative_scale_strech"] = const_818;
         param1["relative_vertical_scale_center"] = const_168;
         param1["relative_vertical_scale_fixed"] = const_110;
         param1["relative_vertical_scale_move"] = const_302;
         param1["relative_vertical_scale_strech"] = const_244;
         param1["on_resize_align_left"] = const_627;
         param1["on_resize_align_right"] = const_382;
         param1["on_resize_align_center"] = const_423;
         param1["on_resize_align_top"] = const_699;
         param1["on_resize_align_bottom"] = const_430;
         param1["on_resize_align_middle"] = const_408;
         param1["on_accommodate_align_left"] = const_908;
         param1["on_accommodate_align_right"] = const_482;
         param1["on_accommodate_align_center"] = const_691;
         param1["on_accommodate_align_top"] = const_922;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_564;
         param1["route_input_events_to_parent"] = const_451;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_948;
         param1["scalable_with_mouse"] = const_932;
         param1["reflect_horizontal_resize_to_parent"] = const_475;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_249;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
