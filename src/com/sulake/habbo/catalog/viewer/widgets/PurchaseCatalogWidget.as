package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1830:XML;
      
      private var var_1453:ITextWindow;
      
      private var var_1452:ITextWindow;
      
      private var var_1832:XML;
      
      private var var_800:IWindowContainer;
      
      private var var_2303:ITextWindow;
      
      private var var_1833:String = "";
      
      private var var_2359:IButtonWindow;
      
      private var var_1831:XML;
      
      private var var_1451:ITextWindow;
      
      private var var_1829:XML;
      
      private var var_801:IButtonWindow;
      
      private var var_76:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_380:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1832) as IWindowContainer;
               break;
            case Offer.const_370:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1829) as IWindowContainer;
               break;
            case Offer.const_466:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1830) as IWindowContainer;
               break;
            case Offer.const_679:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1831) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_800 != null)
            {
               _window.removeChild(var_800);
               var_800.dispose();
            }
            var_800 = _loc2_;
            _window.addChild(_loc2_);
            var_800.x = 0;
            var_800.y = 0;
         }
         var_1451 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1452 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1453 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2303 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_801 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_801 != null)
         {
            var_801.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_801.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_76 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_76,page,var_1833);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1832 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1829 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1830 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1831 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_893,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1833 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_76 = param1.offer;
         attachStub(var_76.priceType);
         if(var_1451 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_76.priceInCredits));
            var_1451.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1452 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_76.priceInPixels));
            var_1452.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1453 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_76.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_76.priceInPixels));
            var_1453.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_801 != null)
         {
            var_801.enable();
         }
      }
   }
}
