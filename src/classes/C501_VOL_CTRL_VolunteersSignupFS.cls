public class C501_VOL_CTRL_VolunteersSignupFS {

    private GW_Volunteers.VOL_CTRL_VolunteersSignupFS controllerBase = null;
    
    public C501_VOL_CTRL_VolunteersSignupFS(GW_Volunteers.VOL_CTRL_VolunteersSignupFS controller) {
        this.controllerBase = controller;
    }
    
    public PageReference SaveExtension() { 
        
      	this.controllerBase.Save();

        PageReference redirectPage = new PageReference('http://techbridgegirls.org/index.php?id=348');
        redirectPage.setRedirect(true);
        
        return redirectPage;
    }
}