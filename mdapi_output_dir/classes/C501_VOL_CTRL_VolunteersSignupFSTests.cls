@istest
class C501_VOL_CTRL_VolunteersSignupFSTests {

    static testmethod void C501_VOL_CTRL_VolunteersSignupFSTest_Error() {

        GW_Volunteers.VOL_CTRL_VolunteersSignupFS signupBase = new GW_Volunteers.VOL_CTRL_VolunteersSignupFS();
        C501_VOL_CTRL_VolunteersSignupFS signup = new C501_VOL_CTRL_VolunteersSignupFS(signupBase);

        signup.SaveExtension();

        System.assert(!signupBase.StrSaveResult.contains('Thank'));
    }    

    static testmethod void C501_VOL_CTRL_VolunteersSignupFSTest_Success() {

        GW_Volunteers.VOL_CTRL_VolunteersSignupFS signupBase = new GW_Volunteers.VOL_CTRL_VolunteersSignupFS();
        C501_VOL_CTRL_VolunteersSignupFS signup = new C501_VOL_CTRL_VolunteersSignupFS(signupBase);

        Contact contact = signupBase.contact;
        System.Assert(contact != null);
        contact.FirstName = 'TestFirstName';
        contact.LastName = 'TestLastName';
        contact.Email = 'foovolunteer@bar.com';
        signup.SaveExtension();
        
        System.Assert(signupBase.StrSaveResult.contains('Thank'));
        System.assertNotEquals('', signup.redirectUrl);
        System.AssertEquals(true, signup.shouldRedirect);
    }    
}
