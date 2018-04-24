<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<%@ Register assembly="DevExpress.Web.v13.1" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.v13.1" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <dxwgv:aspxgridview ID="ASPxGridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="AccessDataSource1" 
            KeyFieldName="ProductID" ClientInstanceName="grid" 
                oncustomcallback="ASPxGridView1_CustomCallback">
            <columns>
                <dxwgv:gridviewdatatextcolumn FieldName="ProductID" ReadOnly="True" 
                    VisibleIndex="0">
                    <editformsettings Visible="False" />
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="ProductName" VisibleIndex="1">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="SupplierID" VisibleIndex="2">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="CategoryID" VisibleIndex="3">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="QuantityPerUnit" VisibleIndex="4">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="UnitPrice" VisibleIndex="5">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="UnitsInStock" VisibleIndex="6">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="UnitsOnOrder" VisibleIndex="7">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="ReorderLevel" VisibleIndex="8">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatacheckcolumn FieldName="Discontinued" VisibleIndex="9">
                </dxwgv:gridviewdatacheckcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="EAN13" VisibleIndex="10">
                </dxwgv:gridviewdatatextcolumn>
            </columns>
        </dxwgv:aspxgridview>
       
        <table>
        <tr>
          <td colspan="2">
            Please select the index of column that you heed to hide or show
          </td>
        </tr>
        <tr>
          <td>
              <dxe:aspxcombobox ID="Aspxcombobox1" runat="server" 
    ValueType="System.String" Width = "100%" ClientInstanceName="combobox">
                 <items>
                     <dxe:listedititem Text="Product ID" Value="0" />
                     <dxe:listedititem Text="Product Name" Value="1" />
                     <dxe:listedititem Text="Supplier ID" Value="2" />
                     <dxe:listedititem Text="Category ID" Value="3" />
                     <dxe:listedititem Text="Qunatity Per Unit" Value="4" />
                     <dxe:listedititem Text="Unit Price" Value="5" />
                     <dxe:listedititem Text="Units In Stock" Value="6" />
                     <dxe:listedititem Text="Units On Order" Value="7" />
                     <dxe:listedititem Text="Reorder Level" Value="8" />
                     <dxe:listedititem Text="Discontinued" Value="9" />
                      <dxe:listedititem Text="EAN" Value="10" />
                 </items>
             </dxe:aspxcombobox>
          </td>
          <td>
              <dxe:aspxbutton ID="ASPxButton1" runat="server" Text="Ok" 
    AutoPostBack="False">
                  <clientsideevents Click="function(s, e) {
	grid.PerformCallback(combobox.GetValue().toString());
}" />
              </dxe:aspxbutton>
          </td>
        </tr>
        </table>
    </div>
    <asp:accessdatasource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Products]">
    </asp:accessdatasource>
    </div>
    </form>
</body>
</html>
