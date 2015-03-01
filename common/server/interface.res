/*
	! Don't remove this file !
*/

new
	// ST
	Text:st_box,
	Text:st_box2,
	Text:st_pmd1,
	Text:st_pmd2,
	Text:st_st_t,
	Text:st_t_u,
	Text:st_t_b,
	Text:st_ct_u,
	Text:st_ct_b,
	Text:st_aa_u,
	Text:st_aa_b,
	Text:st_spec_u,
	Text:st_spec_b,
	Text:st_ltext1,
	Text:st_ub1,
	Text:st_ub2,
	Text:st_ub3,
	Text:st_ub4,
	Text:st_t,
	Text:st_ct,
	Text:st_aa,
	Text:st_spec,
	Text:st_ltext2,
	Text:st_ak,
	// SGI
	Text:s_300,
	Text:s_buyzone,
	Text:s_timer,
	Text:s_win;


LoadGUI()
{
	// Меню выбора команды ( + Connect Player )
	st_box = TextDrawCreate(330.000000, 98.000000, "_");
	TextDrawAlignment(st_box, 2);
	TextDrawBackgroundColor(st_box, 255);
	TextDrawFont(st_box, 1);
	TextDrawLetterSize(st_box, 0.500000, 3.499999);
	TextDrawColor(st_box, -1);
	TextDrawSetOutline(st_box, 0);
	TextDrawSetProportional(st_box, 1);
	TextDrawSetShadow(st_box, 1);
	TextDrawUseBox(st_box, 1);
	TextDrawBoxColor(st_box, 119);
	TextDrawTextSize(st_box, 0.000000, 280.000000);
	TextDrawSetSelectable(st_box, 0);

	st_box2 = TextDrawCreate(330.000000, 138.000000, "_");
	TextDrawAlignment(st_box2, 2);
	TextDrawBackgroundColor(st_box2, 255);
	TextDrawFont(st_box2, 1);
	TextDrawLetterSize(st_box2, 0.500000, 23.000000);
	TextDrawColor(st_box2, -1);
	TextDrawSetOutline(st_box2, 0);
	TextDrawSetProportional(st_box2, 1);
	TextDrawSetShadow(st_box2, 1);
	TextDrawUseBox(st_box2, 1);
	TextDrawBoxColor(st_box2, 119);
	TextDrawTextSize(st_box2, 0.000000, 280.000000);
	TextDrawSetSelectable(st_box2, 0);

	st_pmd1 = TextDrawCreate(190.000000, 97.000000, "pmd");
	TextDrawBackgroundColor(st_pmd1, 0);
	TextDrawFont(st_pmd1, 5);
	TextDrawLetterSize(st_pmd1, 0.500000, 1.000000);
	TextDrawColor(st_pmd1, -6029057);
	TextDrawSetOutline(st_pmd1, 0);
	TextDrawSetProportional(st_pmd1, 1);
	TextDrawSetShadow(st_pmd1, 1);
	TextDrawUseBox(st_pmd1, 1);
	TextDrawBoxColor(st_pmd1, 0);
	TextDrawTextSize(st_pmd1, 31.000000, 33.000000);
	TextDrawSetPreviewModel(st_pmd1, 287);
	TextDrawSetPreviewRot(st_pmd1, 0.000000, 0.000000, 45.000000, 1.000000);
	TextDrawSetSelectable(st_pmd1, 0);

	st_pmd2 = TextDrawCreate(200.000000, 97.000000, "pmd");
	TextDrawBackgroundColor(st_pmd2, 0);
	TextDrawFont(st_pmd2, 5);
	TextDrawLetterSize(st_pmd2, 0.500000, 1.000000);
	TextDrawColor(st_pmd2, -6029057);
	TextDrawSetOutline(st_pmd2, 0);
	TextDrawSetProportional(st_pmd2, 1);
	TextDrawSetShadow(st_pmd2, 1);
	TextDrawUseBox(st_pmd2, 1);
	TextDrawBoxColor(st_pmd2, 0);
	TextDrawTextSize(st_pmd2, 31.000000, 33.000000);
	TextDrawSetPreviewModel(st_pmd2, 125);
	TextDrawSetPreviewRot(st_pmd2, 0.000000, 0.000000, -45.000000, 1.000000);
	TextDrawSetSelectable(st_pmd2, 0);

	st_st_t = TextDrawCreate(235.000000, 105.000000, "SELECT TEAM");
	TextDrawBackgroundColor(st_st_t, 255);
	TextDrawFont(st_st_t, 1);
	TextDrawLetterSize(st_st_t, 0.419999, 1.799999);
	TextDrawColor(st_st_t, -6029057);
	TextDrawSetOutline(st_st_t, 0);
	TextDrawSetProportional(st_st_t, 1);
	TextDrawSetShadow(st_st_t, 0);
	TextDrawSetSelectable(st_st_t, 0);

	st_t_u = TextDrawCreate(200.000000, 160.000000, "_");
	TextDrawBackgroundColor(st_t_u, 255);
	TextDrawFont(st_t_u, 1);
	TextDrawLetterSize(st_t_u, 0.500000, 2.099998);
	TextDrawColor(st_t_u, -1);
	TextDrawSetOutline(st_t_u, 0);
	TextDrawSetProportional(st_t_u, 1);
	TextDrawSetShadow(st_t_u, 1);
	TextDrawUseBox(st_t_u, 1);
	TextDrawBoxColor(st_t_u, -6029227);
	TextDrawTextSize(st_t_u, 310.000000, 10.000000);
	TextDrawSetSelectable(st_t_u, 0);

	st_t_b = TextDrawCreate(201.000000, 161.000000, "_");
	TextDrawBackgroundColor(st_t_b, 255);
	TextDrawFont(st_t_b, 1);
	TextDrawLetterSize(st_t_b, 0.500000, 1.799998);
	TextDrawColor(st_t_b, -1);
	TextDrawSetOutline(st_t_b, 0);
	TextDrawSetProportional(st_t_b, 1);
	TextDrawSetShadow(st_t_b, 1);
	TextDrawUseBox(st_t_b, 1);
	TextDrawBoxColor(st_t_b, 153);
	TextDrawTextSize(st_t_b, 309.000000, 5.000000);
	TextDrawSetSelectable(st_t_b, 0);

	st_ct_u = TextDrawCreate(200.000000, 199.000000, "_");
	TextDrawBackgroundColor(st_ct_u, 255);
	TextDrawFont(st_ct_u, 1);
	TextDrawLetterSize(st_ct_u, 0.500000, 2.099998);
	TextDrawColor(st_ct_u, -1);
	TextDrawSetOutline(st_ct_u, 0);
	TextDrawSetProportional(st_ct_u, 1);
	TextDrawSetShadow(st_ct_u, 1);
	TextDrawUseBox(st_ct_u, 1);
	TextDrawBoxColor(st_ct_u, -6029227);
	TextDrawTextSize(st_ct_u, 310.000000, 10.000000);
	TextDrawSetSelectable(st_ct_u, 0);

	st_ct_b = TextDrawCreate(201.000000, 200.000000, "_");
	TextDrawBackgroundColor(st_ct_b, 255);
	TextDrawFont(st_ct_b, 1);
	TextDrawLetterSize(st_ct_b, 0.500000, 1.799998);
	TextDrawColor(st_ct_b, -1);
	TextDrawSetOutline(st_ct_b, 0);
	TextDrawSetProportional(st_ct_b, 1);
	TextDrawSetShadow(st_ct_b, 1);
	TextDrawUseBox(st_ct_b, 1);
	TextDrawBoxColor(st_ct_b, 153);
	TextDrawTextSize(st_ct_b, 309.000000, 5.000000);
	TextDrawSetSelectable(st_ct_b, 0);

	st_aa_u = TextDrawCreate(200.000000, 258.000000, "_");
	TextDrawBackgroundColor(st_aa_u, 255);
	TextDrawFont(st_aa_u, 1);
	TextDrawLetterSize(st_aa_u, 0.500000, 2.099998);
	TextDrawColor(st_aa_u, -1);
	TextDrawSetOutline(st_aa_u, 0);
	TextDrawSetProportional(st_aa_u, 1);
	TextDrawSetShadow(st_aa_u, 1);
	TextDrawUseBox(st_aa_u, 1);
	TextDrawBoxColor(st_aa_u, -6029227);
	TextDrawTextSize(st_aa_u, 310.000000, 10.000000);
	TextDrawSetSelectable(st_aa_u, 0);

	st_aa_b = TextDrawCreate(201.000000, 259.000000, "_");
	TextDrawBackgroundColor(st_aa_b, 255);
	TextDrawFont(st_aa_b, 1);
	TextDrawLetterSize(st_aa_b, 0.500000, 1.799998);
	TextDrawColor(st_aa_b, -1);
	TextDrawSetOutline(st_aa_b, 0);
	TextDrawSetProportional(st_aa_b, 1);
	TextDrawSetShadow(st_aa_b, 1);
	TextDrawUseBox(st_aa_b, 1);
	TextDrawBoxColor(st_aa_b, 153);
	TextDrawTextSize(st_aa_b, 309.000000, 5.000000);
	TextDrawSetSelectable(st_aa_b, 0);

	st_spec_u = TextDrawCreate(200.000000, 301.000000, "_");
	TextDrawBackgroundColor(st_spec_u, 255);
	TextDrawFont(st_spec_u, 1);
	TextDrawLetterSize(st_spec_u, 0.500000, 2.099998);
	TextDrawColor(st_spec_u, -1);
	TextDrawSetOutline(st_spec_u, 0);
	TextDrawSetProportional(st_spec_u, 1);
	TextDrawSetShadow(st_spec_u, 1);
	TextDrawUseBox(st_spec_u, 1);
	TextDrawBoxColor(st_spec_u, -6029227);
	TextDrawTextSize(st_spec_u, 310.000000, 10.000000);
	TextDrawSetSelectable(st_spec_u, 0);

	st_spec_b = TextDrawCreate(201.000000, 302.000000, "_");
	TextDrawBackgroundColor(st_spec_b, 255);
	TextDrawFont(st_spec_b, 1);
	TextDrawLetterSize(st_spec_b, 0.500000, 1.799998);
	TextDrawColor(st_spec_b, -1);
	TextDrawSetOutline(st_spec_b, 0);
	TextDrawSetProportional(st_spec_b, 1);
	TextDrawSetShadow(st_spec_b, 1);
	TextDrawUseBox(st_spec_b, 1);
	TextDrawBoxColor(st_spec_b, 153);
	TextDrawTextSize(st_spec_b, 309.000000, 5.000000);
	TextDrawSetSelectable(st_spec_b, 0);

	st_ltext1 = TextDrawCreate(348.000000, 151.000000, "This is a simple example of the game Counter-Strike game modes in San Andreas Multiplayer.");
	TextDrawBackgroundColor(st_ltext1, 0);
	TextDrawFont(st_ltext1, 2);
	TextDrawLetterSize(st_ltext1, 0.200000, 1.099996);
	TextDrawColor(st_ltext1, -6029057);
	TextDrawSetOutline(st_ltext1, 0);
	TextDrawSetProportional(st_ltext1, 1);
	TextDrawSetShadow(st_ltext1, 0);
	TextDrawUseBox(st_ltext1, 1);
	TextDrawBoxColor(st_ltext1, 0);
	TextDrawTextSize(st_ltext1, 446.000000, 81.000000);
	TextDrawSetPreviewModel(st_ltext1, 285);
	TextDrawSetPreviewRot(st_ltext1, 0.000000, 0.000000, 0.000000, 1.000000);
	TextDrawSetSelectable(st_ltext1, 0);

	st_ub1 = TextDrawCreate(397.000000, 149.000000, "_");
	TextDrawAlignment(st_ub1, 2);
	TextDrawBackgroundColor(st_ub1, 255);
	TextDrawFont(st_ub1, 1);
	TextDrawLetterSize(st_ub1, 0.500000, -0.300000);
	TextDrawColor(st_ub1, -1);
	TextDrawSetOutline(st_ub1, 0);
	TextDrawSetProportional(st_ub1, 1);
	TextDrawSetShadow(st_ub1, 1);
	TextDrawUseBox(st_ub1, 1);
	TextDrawBoxColor(st_ub1, -6029227);
	TextDrawTextSize(st_ub1, 310.000000, 100.000000);
	TextDrawSetSelectable(st_ub1, 0);

	st_ub2 = TextDrawCreate(397.000000, 334.000000, "_");
	TextDrawAlignment(st_ub2, 2);
	TextDrawBackgroundColor(st_ub2, 255);
	TextDrawFont(st_ub2, 1);
	TextDrawLetterSize(st_ub2, 0.500000, -0.300000);
	TextDrawColor(st_ub2, -1);
	TextDrawSetOutline(st_ub2, 0);
	TextDrawSetProportional(st_ub2, 1);
	TextDrawSetShadow(st_ub2, 1);
	TextDrawUseBox(st_ub2, 1);
	TextDrawBoxColor(st_ub2, -6029227);
	TextDrawTextSize(st_ub2, 310.000000, 100.000000);
	TextDrawSetSelectable(st_ub2, 0);

	st_ub3 = TextDrawCreate(345.000000, 150.000000, "_");
	TextDrawAlignment(st_ub3, 2);
	TextDrawBackgroundColor(st_ub3, 255);
	TextDrawFont(st_ub3, 1);
	TextDrawLetterSize(st_ub3, 0.500000, 20.100000);
	TextDrawColor(st_ub3, -1);
	TextDrawSetOutline(st_ub3, 0);
	TextDrawSetProportional(st_ub3, 1);
	TextDrawSetShadow(st_ub3, 1);
	TextDrawUseBox(st_ub3, 1);
	TextDrawBoxColor(st_ub3, -6029227);
	TextDrawTextSize(st_ub3, 310.000000, -3.000000);
	TextDrawSetSelectable(st_ub3, 0);

	st_ub4 = TextDrawCreate(448.000000, 150.000000, "_");
	TextDrawAlignment(st_ub4, 2);
	TextDrawBackgroundColor(st_ub4, 255);
	TextDrawFont(st_ub4, 1);
	TextDrawLetterSize(st_ub4, 0.500000, 20.100000);
	TextDrawColor(st_ub4, -1);
	TextDrawSetOutline(st_ub4, 0);
	TextDrawSetProportional(st_ub4, 1);
	TextDrawSetShadow(st_ub4, 1);
	TextDrawUseBox(st_ub4, 1);
	TextDrawBoxColor(st_ub4, -6029227);
	TextDrawTextSize(st_ub4, 310.000000, -3.000000);
	TextDrawSetSelectable(st_ub4, 0);

	st_t = TextDrawCreate(204.000000, 163.000000, "TERRORIST FORCES");
	TextDrawBackgroundColor(st_t, 0);
	TextDrawFont(st_t, 1);
	TextDrawLetterSize(st_t, 0.300000, 1.200000);
	TextDrawColor(st_t, -6029057);
	TextDrawSetOutline(st_t, 0);
	TextDrawSetProportional(st_t, 1);
	TextDrawSetShadow(st_t, 0);
	TextDrawTextSize(st_t, 300.0, 15.0);
	TextDrawSetSelectable(st_t, 1);

	st_ct = TextDrawCreate(204.000000, 202.000000, "CT FORCES");
	TextDrawBackgroundColor(st_ct, 0);
	TextDrawFont(st_ct, 1);
	TextDrawLetterSize(st_ct, 0.300000, 1.200000);
	TextDrawColor(st_ct, -6029057);
	TextDrawSetOutline(st_ct, 0);
	TextDrawSetProportional(st_ct, 1);
	TextDrawSetShadow(st_ct, 0);
	TextDrawTextSize(st_ct, 300.0, 15.0);
	TextDrawSetSelectable(st_ct, 1);

	st_aa = TextDrawCreate(204.000000, 262.000000, "AUTO ASSIGN");
	TextDrawBackgroundColor(st_aa, 0);
	TextDrawFont(st_aa, 1);
	TextDrawLetterSize(st_aa, 0.300000, 1.200000);
	TextDrawColor(st_aa, -6029057);
	TextDrawSetOutline(st_aa, 0);
	TextDrawSetProportional(st_aa, 1);
	TextDrawSetShadow(st_aa, 0);
	TextDrawTextSize(st_aa, 300.0, 15.0);
	TextDrawSetSelectable(st_aa, 1);

	st_spec = TextDrawCreate(204.000000, 305.000000, "SPECTATE");
	TextDrawBackgroundColor(st_spec, 0);
	TextDrawFont(st_spec, 1);
	TextDrawLetterSize(st_spec, 0.300000, 1.200000);
	TextDrawColor(st_spec, -6029057);
	TextDrawSetOutline(st_spec, 0);
	TextDrawSetProportional(st_spec, 1);
	TextDrawSetShadow(st_spec, 0);
	TextDrawTextSize(st_spec, 300.0, 15.0);
	TextDrawSetSelectable(st_spec, 1);

	st_ltext2 = TextDrawCreate(348.000000, 200.000000, "At this stage of the game modes are not completely ready , but it is playable . Have fun and enjoyable game!");
	TextDrawBackgroundColor(st_ltext2, 0);
	TextDrawFont(st_ltext2, 2);
	TextDrawLetterSize(st_ltext2, 0.200000, 1.099996);
	TextDrawColor(st_ltext2, -6029057);
	TextDrawSetOutline(st_ltext2, 0);
	TextDrawSetProportional(st_ltext2, 1);
	TextDrawSetShadow(st_ltext2, 0);
	TextDrawUseBox(st_ltext2, 1);
	TextDrawBoxColor(st_ltext2, 0);
	TextDrawTextSize(st_ltext2, 446.000000, 81.000000);
	TextDrawSetPreviewModel(st_ltext2, 285);
	TextDrawSetPreviewRot(st_ltext2, 0.000000, 0.000000, 0.000000, 1.000000);
	TextDrawSetSelectable(st_ltext2, 0);

	st_ak = TextDrawCreate(368.000000, 253.000000, "ak-47");
	TextDrawAlignment(st_ak, 2);
	TextDrawBackgroundColor(st_ak, 0);
	TextDrawFont(st_ak, 5);
	TextDrawLetterSize(st_ak, 0.200000, 6.099996);
	TextDrawColor(st_ak, -6029057);
	TextDrawSetOutline(st_ak, 0);
	TextDrawSetProportional(st_ak, 1);
	TextDrawSetShadow(st_ak, 0);
	TextDrawUseBox(st_ak, 1);
	TextDrawBoxColor(st_ak, 0);
	TextDrawTextSize(st_ak, 71.000000, 101.000000);
	TextDrawSetPreviewModel(st_ak, 355);
	TextDrawSetPreviewRot(st_ak, 0.000000, 0.000000, 0.000000, 2.500000);
	TextDrawSetSelectable(st_ak, 0);
	
	// Simple GUI Interface
	s_300 = TextDrawCreate(608.000000, 97.000000, "+300");
	TextDrawAlignment(s_300, 3);
	TextDrawBackgroundColor(s_300, 96492578);
	TextDrawFont(s_300, 3);
	TextDrawLetterSize(s_300, 0.569998, 2.099999);
	TextDrawColor(s_300, 0x03c03c99);
	TextDrawSetOutline(s_300, 1);
	TextDrawSetProportional(s_300, 0);
	TextDrawSetSelectable(s_300, 0);

	s_buyzone = TextDrawCreate(498.000000, 102.000000, "Buy Zone");
	TextDrawBackgroundColor(s_buyzone, 255);
	TextDrawFont(s_buyzone, 2);
	TextDrawLetterSize(s_buyzone, 0.169999, 1.100000);
	TextDrawColor(s_buyzone, 96492799);
	TextDrawSetOutline(s_buyzone, 1);
	TextDrawSetProportional(s_buyzone, 0);
	TextDrawSetSelectable(s_buyzone, 0);

	s_timer = TextDrawCreate(520.000000, 10.000000, "3:50");
	TextDrawAlignment(s_timer, 2);
	TextDrawBackgroundColor(s_timer, 255);
	TextDrawFont(s_timer, 1);
	TextDrawLetterSize(s_timer, 0.209999, 1.300000);
	TextDrawColor(s_timer, -5308161);
	TextDrawSetOutline(s_timer, 1);
	TextDrawSetProportional(s_timer, 0);
	TextDrawSetSelectable(s_timer, 0);
	
	s_win = TextDrawCreate(325.000000, 200.000000, "Counter-Terrorist Win");
	TextDrawAlignment(s_win, 2);
	TextDrawBackgroundColor(s_win, 255);
	TextDrawFont(s_win, 2);
	TextDrawLetterSize(s_win, 0.180000, 0.799999);
	TextDrawColor(s_win, -5308161);
	TextDrawSetOutline(s_win, 1);
	TextDrawSetProportional(s_win, 1);
	TextDrawSetSelectable(s_win, 0);
}