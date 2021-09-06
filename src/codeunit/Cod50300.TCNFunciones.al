codeunit 50300 "TCNFunciones"
{
    trigger OnRun()
    var
        culTCNFuncionesComunes: Codeunit TCN_FuncionesComunes;
        pglTCNConfAddOn: Page TCNConfAddOn;
    begin
        culTCNFuncionesComunes.MostrarListaObjetosModuloAddOn(pglTCNConfAddOn.ConfObjectIdF());
    end;

    procedure NombreAppF() xSalida: Text
    var
        xModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(xModuleInfo);
        xSalida := xModuleInfo.Name();
    end;
}