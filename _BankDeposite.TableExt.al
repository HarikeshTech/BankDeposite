tableextension 50035 "BankDepositHeaderExt" extends "Bank Deposit Header"
{
    fields
    {
        field(50000; "Maturity Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50001; "Amount Redeemed"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "Interest Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50003; "No. of DaysFromDateofDeposite"; Decimal)
        {
            Caption = 'No. of Days(From Date of Deposite)';
            DataClassification = ToBeClassified;
        }
        field(50004; "No. of DaysFrom Financeialyear"; Decimal)
        {
            Caption = 'No. of Days(From Financeial year)';
            DataClassification = ToBeClassified;
        }
        field(50005; "Interest Received"; Decimal)
        {
            DataClassification = ToBeClassified;
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