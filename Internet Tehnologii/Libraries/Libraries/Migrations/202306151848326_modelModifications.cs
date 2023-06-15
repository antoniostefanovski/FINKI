namespace Libraries.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class modelModifications : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Books", "Title", c => c.String(nullable: false));
            AlterColumn("dbo.Books", "BookCode", c => c.String(nullable: false, maxLength: 5));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Books", "BookCode", c => c.String());
            AlterColumn("dbo.Books", "Title", c => c.String());
        }
    }
}
