﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="AdminProductosLista.aspx.cs" Inherits="VinoSOFT_TFI.AdminProductosLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headBackend" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoBackendMasterPage" runat="server">
    <div>
        <div class="header-section">
            <h3><strong>Productos</strong>
            <asp:Button ID="btnNuevo" runat="server" CssClass="btn btn-primary pull-right" Text="Nuevo Producto" OnClick="btnNuevo_Click" />   
            </h3>
        </div>
        <div class="block full">
            <div style="border-top: 1px solid black"></div>
            <asp:GridView ID="dgvProductos" runat="server" AllowSorting="true" AutoGenerateColumns="false" BorderStyle="None" CssClass="table table-striped table-hover" AllowPaging="true"
                gridlines="None" PagerStyle-HorizontalAlign="Right" OnPageIndexChanging="dgvProductos_PageIndexChanging" OnPageIndexChanged="dgvProductos_PageIndexChanged" PageSize="15"
                 OnRowEditing="dgvProductos_RowEditing" OnRowDeleting="dgvProductos_RowDeleting" >
                <Columns>
                    <asp:BoundField DataField="idProducto" headertext="Código" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Categoria.Nombre" Headertext="Categoria" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:CommandField ShowEditButton="true" EditText="Editar" ControlStyle-CssClass="btn btn-xs btn-warning" HeaderText="" />
<%--                    <asp:CommandField ShowDeleteButton="true" EditText="Eliminar" ControlStyle-CssClass="btn btn-xs btn-danger" HeaderText="Eliminar" />--%>

                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
