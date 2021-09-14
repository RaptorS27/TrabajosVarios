codeunit 50300 "TCNFunciones"
{
    trigger OnRun()
    var
        culTCNFuncionesComunes: Codeunit TCN_FuncionesComunes;
        pglTCNConfAddOn: Page TCNConfAddOn;
    begin
        culTCNFuncionesComunes.MostrarListaObjetosModuloAddOn(pglTCNConfAddOn.ConfObjectIdF());
    end;

    procedure ExtraerTablasRelacionadasF(pNumTabla: Integer; pProfundizar: Boolean; var TempPTablas: Record Integer temporary; pNivel: Integer)
    var
        rlTableRelationsMetadata: Record "Table Relations Metadata";
        xlRecRef: RecordRef;
    begin
        // Si ya existe en la tabla temporal (ya se ha procesado), salir de la función
        if not TempPTablas.Get(pNumTabla) then begin
            // Meter el registro (si no existe) en la tabla tempora de e/S                                              
            TempPTablas.Init();
            TempPTablas.Number := pNumTabla;
            TempPTablas.Insert(false);
            if (pNivel = 0) or pProfundizar then begin
                // Abrir con recordref la tabla pasada, y si no tiene registros salir de la función                         
                xlRecRef.Open(pNumTabla);
                if not xlRecRef.IsEmpty then begin
                    // Recorrer los campos enlazados con otras tablas, y si no hay tablas relacionada, salir de la función      
                    rlTableRelationsMetadata.SetRange("Table ID", pNumTabla);
                    if rlTableRelationsMetadata.FindSet(false) then begin
                        repeat
                            // Si not profundizar salir de la funcion
                            ExtraerTablasRelacionadasF(rlTableRelationsMetadata."Related Table ID", pProfundizar, TempPTablas, pNivel + 1);
                        until rlTableRelationsMetadata.Next() = 0;
                    end;
                end;
                xlRecRef.Close();
            end;
        end;
    end;

    procedure NombreAppF() xSalida: Text
    var
        xModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(xModuleInfo);
        xSalida := xModuleInfo.Name();
    end;

}