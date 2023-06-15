namespace LABS3.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class patientModelEdited : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Patients", "Name", c => c.String(nullable: false));
            AlterColumn("dbo.Patients", "PatientCode", c => c.String(maxLength: 5));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Patients", "PatientCode", c => c.String());
            AlterColumn("dbo.Patients", "Name", c => c.String());
        }
    }
}
