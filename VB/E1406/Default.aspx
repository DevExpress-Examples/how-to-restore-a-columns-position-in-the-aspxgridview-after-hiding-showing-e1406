<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function onClick(s, e) {
            grid.PerformCallback(combobox.GetValue().toString());
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
                KeyFieldName="ProductID" ClientInstanceName="grid" OnCustomCallback="ASPxGridView1_CustomCallback">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True"
                        VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <table>
                <tr>
                    <td colspan="2">Please select the index of column that you need to hide or show
                    </td>
                </tr>
                <tr>
                    <td>
                        <dx:ASPxComboBox ID="Aspxcombobox1" runat="server"
                            ValueType="System.String" Width="100%" ClientInstanceName="combobox">
                            <Items>
                                <dx:ListEditItem Text="Product ID" Value="0" />
                                <dx:ListEditItem Text="Product Name" Value="1" />
                                <dx:ListEditItem Text="Supplier ID" Value="2" />
                                <dx:ListEditItem Text="Category ID" Value="3" />
                                <dx:ListEditItem Text="Qunatity Per Unit" Value="4" />
                                <dx:ListEditItem Text="Unit Price" Value="5" />
                                <dx:ListEditItem Text="Units In Stock" Value="6" />
                                <dx:ListEditItem Text="Units On Order" Value="7" />
                                <dx:ListEditItem Text="Reorder Level" Value="8" />
                                <dx:ListEditItem Text="Discontinued" Value="9" />
                                <dx:ListEditItem Text="EAN" Value="10" />
                            </Items>
                        </dx:ASPxComboBox>
                    </td>
                    <td>
                        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Ok" AutoPostBack="False">
                            <ClientSideEvents Click="onClick" />
                        </dx:ASPxButton>
                    </td>
                </tr>
            </table>
        </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
    </form>
</body>
</html>