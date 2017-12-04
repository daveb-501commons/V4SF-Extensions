public class C501_VOL_CTRL_VolunteersSignupFS {

    public String redirectUrl {get; private set;}
    public Boolean shouldRedirect {get; private set;}
    private GW_Volunteers.VOL_CTRL_VolunteersSignupFS controllerBase = null;
    
    public C501_VOL_CTRL_VolunteersSignupFS(GW_Volunteers.VOL_CTRL_VolunteersSignupFS controller) {
        this.controllerBase = controller;
    }
    
    public PageReference SaveExtension() { 
        
      	this.controllerBase.Save();

        if (this.controllerBase.StrSaveResult.contains('Thank')) {
            shouldRedirect = true;
            redirectUrl = 'http://techbridgegirls.org/index.php?id=348';
        }
        
        return null;
    }
}