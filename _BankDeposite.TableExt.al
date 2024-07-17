tableextension 50035 "BankDepositHeaderExt" extends "Bank Deposit Header"
{
    fields
    {
        field(50000; "Maturity Date"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                AccountingPeriod: Record "Accounting Period";
                FiscalYearStartDate: Date;
                FiscalYearEndDate: Date;
            begin
                if ("Posting Date" <> 0D) and ("Maturity Date" <> 0D) then
                    "No. of DaysFromDateofDeposite" := "Maturity Date" - "Posting Date";
                FiscalYearStartDate := AccountingPeriod.GetFiscalYearStartDate("Maturity Date"); //AccountingPeriod."Starting Date";
                                                                                                 //   FiscalYearEndDate := AccountingPeriod.GetFiscalYearEndDate("Maturity Date");
                if "Posting Date" < FiscalYearStartDate then
                    "No. of DaysFrom Financeialyear" := "Maturity Date" - FiscalYearStartDate
                else
                    "No. of DaysFrom Financeialyear" := "Maturity Date" - "Posting Date";
            end;
        }
        field(50001; "Amount Redeemed"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "Interest Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                Validate("Interest Received", ("Total Deposit Amount" * "Interest Rate" / 365) * "No. of DaysFrom Financeialyear");
            end;
        }
        field(50003; "No. of DaysFromDateofDeposite"; Decimal)
        {
            Caption = 'No. of Days(From Date of Deposite)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50004; "No. of DaysFrom Financeialyear"; Decimal)
        {
            Caption = 'No. of Days(From Financial year)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50005; "Interest Received"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                "Actual Amount Received" := "Total Deposit Amount" + "Interest Received" - TDS;
            end;
        }
        field(50006; "TDS"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50007; "Actual Amount Received"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50008; "Month End Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50009; "No of Days as on"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50010; "Accrued Interest"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}