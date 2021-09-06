codeunit 1001 "TCNCuInstalacion"
{
    Subtype = Install;

    trigger OnInstallAppPerDatabase()
    begin
    end;

    trigger OnInstallAppPerCompany()
    var
        pglConfAddOn: Page TCNConfAddOn;
    begin
        pglConfAddOn.AccionesAlInstalarYAcutalizarF();
    end;
}