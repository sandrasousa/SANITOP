<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EXSanitop.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="User" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="IDUtilizador" HeaderText="Nª"/>
                    <asp:BoundField DataField="Nome" HeaderText="Nome"/>
                    <asp:BoundField DataField="Email" HeaderText="Email"/>
                    <asp:BoundField DataField="DataCriacao" HeaderText="Data Criação"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="BtnSelect" Text="Selecionar" runat="server" CommandArgument='<%# Eval("IDUtilizador") %>' OnClick="BtnSelect_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
