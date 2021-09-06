codeunit 50301 "TCNCuInstalacion"
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