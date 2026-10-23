@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for PO manage ITEM'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity YSP_RAP_PO_ITEM_MANAGE_PV
  as projection on YSP_RAP_PO_ITEM_CHILD
{
  key PurchasingDoc,
  key PurchaseOrderItem,
      Material,
      PoQuantity,
      OrderUnit,
      NetPrice,
      CurrencyCode,
      /* Associations */
      _Header : redirected to parent YSP_RAP_PO_HEADER_MANAGE_PV
}
