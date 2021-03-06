/* -*-c-*- */

#define KSC_JAMOBASE		0x2420
#define UNI_JAMOBASE		0x3130

#define KSC_KIYEOK		0x2421
#define KSC_SSANGKIYEOK		0x2422
#define KSC_KIYEOK_SIOS		0x2423
#define KSC_NIEUN		0x2424
#define KSC_NIEUN_CIEUC		0x2425
#define KSC_NIEUN_HIEUH		0x2426
#define KSC_TIKEUT		0x2427
#define KSC_SSANGTIKEUT		0x2428
#define KSC_RIEUL		0x2429
#define KSC_RIEUL_KIYEOK	0x242a
#define KSC_RIEUL_MIEUM		0x242b
#define KSC_RIEUL_PIEUP		0x242c
#define KSC_RIEUL_SIOS		0x242d
#define KSC_RIEUL_THIEUTH	0x242e
#define KSC_RIEUL_PHIEUPH	0x242f
#define KSC_RIEUL_HIEUH		0x2430
#define KSC_MIEUM		0x2431
#define KSC_PIEUP		0x2432
#define KSC_SSANGPIEUP		0x2433
#define KSC_PIEUP_SIOS		0x2434
#define KSC_SIOS		0x2435
#define KSC_SSANGSIOS		0x2436
#define KSC_IEUNG		0x2437
#define KSC_CIEUC		0x2438
#define KSC_SSANGCIEUC		0x2439
#define KSC_CHIEUCH		0x243a
#define KSC_KHIEUKH		0x243b
#define KSC_THIEUTH		0x243c
#define KSC_PHIEUPH		0x243d
#define KSC_HIEUH		0x243e

#define KSC_A			0x243f
#define KSC_AE			0x2440
#define KSC_YA			0x2441
#define KSC_YAE			0x2442
#define KSC_EO			0x2443
#define KSC_E			0x2444
#define KSC_YEO			0x2445
#define KSC_YE			0x2446
#define KSC_O			0x2447
#define KSC_WA			0x2448
#define KSC_WAE			0x2449
#define KSC_OE			0x244a
#define KSC_YO			0x244b
#define KSC_U			0x244c
#define KSC_WEO			0x244d
#define KSC_WE			0x244e
#define KSC_WI			0x244f
#define KSC_YU			0x2450
#define KSC_EU			0x2451
#define KSC_YI			0x2452
#define KSC_I			0x2453

#define KSC_SSANGNIEUN		0x2455
#define KSC_NIEUN_TIKEUT	0x2456
#define KSC_NIEUN_SIOS		0x2457
#define KSC_NIEUN_PANSIOS	0x2458
#define KSC_RIEUL_KIYEOK_SIOS	0x2459
#define KSC_RIEUL_TIKEUT	0x245a
#define KSC_RIEUL_PIEUP_SIOS	0x245b
#define KSC_RIEUL_PANSIOS	0x245c
#define KSC_RIEUL_YEORINHIEUH	0x245d
#define KSC_MIEUM_PIEUP		0x245e
#define KSC_MIEUM_SIOS		0x245f
#define KSC_MIEUM_PANSIOS	0x2460
#define KSC_KAPYEOUNMIEUM	0x2461
#define KSC_PIEUP_KIYEOK	0x2462
#define KSC_PIEUP_TIKEUT	0x2463
#define KSC_PIEUP_SIOS_KIYEOK	0x2464
#define KSC_PIEUP_SIOS_TIKEUT	0x2465
#define KSC_PIEUP_CIEUC		0x2466
#define KSC_PIEUP_THIEUTH	0x2467
#define KSC_KAPYEOUNPIEUP	0x2468
#define KSC_KAPYEOUNSSANGPIEUP	0x2469
#define KSC_SIOS_KIYEOK		0x246a
#define KSC_SIOS_NIEUN		0x246b
#define KSC_SIOS_TIKEUT		0x246c
#define KSC_SIOS_PIEUP		0x246d
#define KSC_SIOS_CIEUC		0x246e
#define KSC_PANSIOS		0x246f
#define KSC_SSANGIEUNG		0x2470
#define KSC_YESIEUNG		0x2471
#define KSC_IEUNG_CIEUC		0x2472
#define KSC_IEUNG_PANSIOS	0x2473
#define KSC_KAPYEOUNPHIEUPH	0x2474
#define KSC_SSANGHIEUH		0x2475
#define KSC_YEORINHIEUH		0x2476
#define KSC_YO_YA		0x2477
#define KSC_YO_YAE		0x2478
#define KSC_YO_I		0x2479
#define KSC_YU_YEO		0x247a
#define KSC_YU_YE		0x247b
#define KSC_YU_I		0x247c
#define KSC_ARAEA		0x247d
#define KSC_ARAEA_I		0x247e

/*
 * Some jamos are not representable with KSC5601.  These are ugly
 * fallbacks:
 *
 * CHITUEUMSIOS: 0x233c (less than)
 * CEONGCHITUEUMSIOS: 0x233e (greater than)
 * CHITUEUMCIEUC 0x237b (left bracket)
 * CEONGEUMCIEUC 0x237d (right bracket)
 * CHITUEUMCHIEUCH 0x237b (left brace)
 * CEONGEUMCHIEUCH 0x237d (right brace)
 */
#define KSC_CHITUEUMSIOS	0x233c
#define KSC_CEONGCHITUEUMSIOS	0x233e
#define KSC_CHITUEUMCIEUC	0x235b
#define KSC_CEONGEUMCIEUC	0x235d
#define KSC_CHITUEUMCHIEUCH	0x237b
#define KSC_CEONGEUMCHIEUCH	0x237d

static const guint16 __jamo_to_ksc5601[0x100][3] =
{
  /*
   * CHOSEONG
   */
  /* CHOSEONG 0x1100 -- 0x1112 : matched to each ksc5601 Jamos extactly.  */
  {KSC_KIYEOK, 0, 0},
  {KSC_SSANGKIYEOK, 0, 0},
  {KSC_NIEUN, 0, 0},
  {KSC_TIKEUT, 0, 0},
  {KSC_SSANGTIKEUT, 0, 0},
  {KSC_RIEUL, 0, 0},
  {KSC_MIEUM, 0, 0},
  {KSC_PIEUP, 0, 0},
  {KSC_SSANGPIEUP, 0, 0},
  {KSC_SIOS, 0, 0},
  {KSC_SSANGSIOS, 0, 0},
  {KSC_IEUNG, 0, 0},
  {KSC_CIEUC, 0, 0},
  {KSC_SSANGCIEUC, 0, 0},
  {KSC_CHIEUCH, 0, 0},
  {KSC_KHIEUKH, 0, 0},
  {KSC_THIEUTH, 0, 0},
  {KSC_PHIEUPH, 0, 0},
  {KSC_HIEUH, 0, 0},
  /* Some of the following are representable as a glyph, the others not. */
  {KSC_NIEUN, KSC_KIYEOK, 0},
  {KSC_SSANGNIEUN, 0, 0},
  {KSC_NIEUN_TIKEUT, 0, 0},
  {KSC_NIEUN, KSC_PIEUP, 0},
  {KSC_TIKEUT, KSC_KIYEOK, 0},
  {KSC_RIEUL, KSC_NIEUN, 0},
  {KSC_RIEUL, KSC_RIEUL, 0},
  {KSC_RIEUL_HIEUH, 0, 0},
  {KSC_RIEUL, KSC_IEUNG, 0},
  {KSC_MIEUM_PIEUP, 0, 0},
  {KSC_KAPYEOUNMIEUM, 0, 0},
  {KSC_PIEUP_KIYEOK, 0, 0},
  {KSC_PIEUP, KSC_NIEUN, 0},
  {KSC_PIEUP_TIKEUT, 0, 0},
  {KSC_PIEUP_SIOS, 0, 0},
  {KSC_PIEUP_SIOS_KIYEOK, 0, 0},
  {KSC_PIEUP_SIOS_TIKEUT, 0, 0},
  {KSC_PIEUP, KSC_SIOS, KSC_PIEUP},
  {KSC_PIEUP, KSC_SIOS, KSC_SIOS},
  {KSC_PIEUP, KSC_SIOS, KSC_CIEUC},
  {KSC_PIEUP_CIEUC, 0, 0},
  {KSC_PIEUP, KSC_CHIEUCH, 0},
  {KSC_PIEUP_THIEUTH, 0, 0},
  {KSC_PIEUP, KSC_PHIEUPH, 0},
  {KSC_KAPYEOUNPIEUP, 0, 0},
  {KSC_KAPYEOUNSSANGPIEUP, 0, 0},
  {KSC_SIOS_KIYEOK, 0, 0},
  {KSC_SIOS_NIEUN, 0, 0},
  {KSC_SIOS_TIKEUT, 0, 0},
  {KSC_SIOS, KSC_RIEUL, 0},
  {KSC_SIOS, KSC_MIEUM, 0},
  {KSC_SIOS_PIEUP, 0, 0},
  {KSC_SIOS, KSC_PIEUP, KSC_KIYEOK},
  {KSC_SIOS, KSC_SIOS, KSC_SIOS},
  {KSC_SIOS, KSC_IEUNG, 0},
  {KSC_SIOS_CIEUC, 0, 0},
  {KSC_SIOS, KSC_CHIEUCH, 0},
  {KSC_SIOS, KSC_KHIEUKH, 0},
  {KSC_SIOS, KSC_THIEUTH, 0},
  {KSC_SIOS, KSC_PHIEUPH, 0},
  {KSC_SIOS, KSC_HIEUH, 0},
  {KSC_CHITUEUMSIOS, 0, 0},
  {KSC_CHITUEUMSIOS, KSC_CHITUEUMSIOS, 0},
  {KSC_CEONGCHITUEUMSIOS, 0, 0},
  {KSC_CEONGCHITUEUMSIOS, KSC_CEONGCHITUEUMSIOS, 0},
  {KSC_PANSIOS, 0, 0},
  {KSC_IEUNG, KSC_KIYEOK, 0},
  {KSC_IEUNG, KSC_TIKEUT, 0},
  {KSC_IEUNG, KSC_MIEUM, 0},
  {KSC_IEUNG, KSC_PIEUP, 0},
  {KSC_IEUNG, KSC_SIOS, 0},
  {KSC_IEUNG_PANSIOS, 0, 0},
  {KSC_SSANGIEUNG, 0, 0},
  {KSC_IEUNG_CIEUC, 0, 0},
  {KSC_IEUNG, KSC_CHIEUCH, 0},
  {KSC_IEUNG, KSC_THIEUTH, 0},
  {KSC_IEUNG, KSC_PHIEUPH, 0},
  {KSC_YESIEUNG, 0, 0},
  {KSC_CIEUC, KSC_IEUNG, 0},
  {KSC_CHITUEUMCIEUC, 0, 0},
  {KSC_CHITUEUMCIEUC, KSC_CHITUEUMCIEUC, 0},
  {KSC_CEONGEUMCIEUC, 0, 0},
  {KSC_CEONGEUMCIEUC, KSC_CEONGEUMCIEUC, 0},
  {KSC_CHIEUCH, KSC_KHIEUKH, 0},
  {KSC_CHIEUCH, KSC_HIEUH, 0},
  {KSC_CHITUEUMCHIEUCH, 0, 0},
  {KSC_CEONGEUMCHIEUCH, 0, 0},
  {KSC_PHIEUPH, KSC_PIEUP, 0},
  {KSC_KAPYEOUNPHIEUPH, 0, 0},
  {KSC_SSANGHIEUH, 0, 0},
  {KSC_YEORINHIEUH, 0, 0},
  /* 0x115A ~ 0x115E -- reserved */
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  /* CHOSEONG FILLER */
  {0, 0, 0},

  /*
   * JUNGSEONG
   */
  /*
   * JUNGSEONG
   */
  {0, 0, 0},			/* JUNGSEONG FILL */
  /* JUNGSEONG 0x1161 -- 0x1175 : matched to each ksc5601 Jamos extactly.  */
  {KSC_A, 0, 0},
  {KSC_AE, 0, 0},
  {KSC_YA, 0, 0},
  {KSC_YAE, 0, 0},
  {KSC_EO, 0, 0},
  {KSC_E, 0, 0},
  {KSC_YEO, 0, 0},
  {KSC_YE, 0, 0},
  {KSC_O, 0, 0},
  {KSC_WA, 0, 0},
  {KSC_WAE, 0, 0},
  {KSC_OE, 0, 0},
  {KSC_YO, 0, 0},
  {KSC_U, 0, 0},
  {KSC_WEO, 0, 0},
  {KSC_WE, 0, 0},
  {KSC_WI, 0, 0},
  {KSC_YU, 0, 0},
  {KSC_EU, 0, 0},
  {KSC_YI, 0, 0},
  {KSC_I, 0, 0},
  /* Some of the following are representable as a glyph, the others not. */
  {KSC_A, KSC_O, 0},
  {KSC_A, KSC_U, 0},
  {KSC_YA, KSC_O, 0},
  {KSC_YA, KSC_YO, 0},
  {KSC_EO, KSC_O, 0},
  {KSC_EO, KSC_U, 0},
  {KSC_EO, KSC_EU, 0},
  {KSC_YEO, KSC_O, 0},
  {KSC_YEO, KSC_U, 0},
  {KSC_O, KSC_EO, 0},
  {KSC_O, KSC_E, 0},
  {KSC_O, KSC_YE, 0},
  {KSC_O, KSC_O, 0},
  {KSC_O, KSC_U, 0},
  {KSC_YO_YA, 0, 0},
  {KSC_YO_YAE, 0, 0},
  {KSC_YO, KSC_YEO, 0},
  {KSC_YO, KSC_O, 0},
  {KSC_YO_I, 0, 0},
  {KSC_U, KSC_A, 0},
  {KSC_U, KSC_AE, 0},
  {KSC_U, KSC_EO, KSC_EU},
  {KSC_U, KSC_YE, 0},
  {KSC_U, KSC_U, 0},
  {KSC_YU, KSC_A, 0},
  {KSC_YU, KSC_EO, 0},
  {KSC_YU, KSC_E, 0},
  {KSC_YU_YEO, 0, 0},
  {KSC_YU_YE, 0, 0},
  {KSC_YU, KSC_U, 0},
  {KSC_YU_I, 0, 0},
  {KSC_EU, KSC_U, 0},
  {KSC_EU, KSC_EU, 0},
  {KSC_YI, KSC_U, 0},
  {KSC_I, KSC_A, 0},
  {KSC_I, KSC_YA, 0},
  {KSC_I, KSC_O, 0},
  {KSC_I, KSC_U, 0},
  {KSC_I, KSC_EU, 0},
  {KSC_I, KSC_ARAEA, 0},
  {KSC_ARAEA, 0, 0},
  {KSC_ARAEA, KSC_EO, 0},
  {KSC_ARAEA, KSC_U, 0},
  {KSC_ARAEA, KSC_I, 0},
  {KSC_ARAEA, KSC_ARAEA, 0},
  /* 0x11A3 ~ 0x11A7 -- reserved */
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},			/* (INTERNAL) JONGSEONG FILL */
  
  /*
   * JONGSEONG
   */
  {KSC_KIYEOK, 0, 0},
  {KSC_SSANGKIYEOK, 0, 0},
  {KSC_KIYEOK_SIOS, 0, 0},
  {KSC_NIEUN, 0, 0},
  {KSC_NIEUN_CIEUC, 0, 0},
  {KSC_NIEUN_HIEUH, 0, 0},
  {KSC_TIKEUT, 0, 0},
  {KSC_RIEUL, 0, 0},
  {KSC_RIEUL_KIYEOK, 0, 0},
  {KSC_RIEUL_MIEUM, 0, 0},
  {KSC_RIEUL_PIEUP, 0, 0},
  {KSC_RIEUL_SIOS, 0, 0},
  {KSC_RIEUL_TIKEUT, 0, 0},
  {KSC_RIEUL_PHIEUPH, 0, 0},
  {KSC_RIEUL_HIEUH, 0, 0},
  {KSC_MIEUM, 0, 0},
  {KSC_PIEUP, 0, 0},
  {KSC_PIEUP_SIOS, 0, 0},
  {KSC_SIOS, 0, 0},
  {KSC_SSANGSIOS, 0, 0},
  {KSC_IEUNG, 0, 0},
  {KSC_CIEUC, 0, 0},
  {KSC_CHIEUCH, 0, 0},
  {KSC_KHIEUKH, 0, 0},
  {KSC_THIEUTH, 0, 0},
  {KSC_PHIEUPH, 0, 0},
  {KSC_HIEUH, 0, 0},
  {KSC_KIYEOK, KSC_RIEUL, 0},
  {KSC_KIYEOK, KSC_SIOS, KSC_KIYEOK},
  {KSC_NIEUN, KSC_KIYEOK, 0},
  {KSC_NIEUN_TIKEUT, 0, 0},
  {KSC_NIEUN_SIOS, 0, 0},
  {KSC_NIEUN_PANSIOS, 0, 0},
  {KSC_NIEUN, KSC_THIEUTH, 0},
  {KSC_TIKEUT, KSC_KIYEOK, 0},
  {KSC_TIKEUT, KSC_RIEUL, 0},
  {KSC_RIEUL_KIYEOK_SIOS, 0, 0},
  {KSC_RIEUL, KSC_NIEUN, 0},
  {KSC_RIEUL_TIKEUT, 0, 0},
  {KSC_RIEUL, KSC_TIKEUT, KSC_HIEUH},
  {KSC_RIEUL, KSC_RIEUL, 0},
  {KSC_RIEUL, KSC_MIEUM, KSC_KIYEOK},
  {KSC_RIEUL, KSC_MIEUM, KSC_SIOS},
  {KSC_RIEUL_PIEUP_SIOS, 0, 0},
  {KSC_RIEUL, KSC_PHIEUPH, KSC_HIEUH},
  {KSC_RIEUL, KSC_KAPYEOUNPIEUP, 0},
  {KSC_RIEUL, KSC_SIOS, KSC_SIOS},
  {KSC_RIEUL_PANSIOS, 0, 0},
  {KSC_RIEUL, KSC_KHIEUKH, 0},
  {KSC_RIEUL_YEORINHIEUH, 0, 0},
  {KSC_MIEUM, KSC_KIYEOK, 0},
  {KSC_MIEUM, KSC_RIEUL, 0},
  {KSC_MIEUM_PIEUP, 0, 0},
  {KSC_MIEUM_SIOS, 0, 0},
  {KSC_MIEUM, KSC_SIOS, KSC_SIOS},
  {KSC_MIEUM_PANSIOS, 0, 0},
  {KSC_MIEUM, KSC_CHIEUCH, 0},
  {KSC_MIEUM, KSC_HIEUH, 0},
  {KSC_KAPYEOUNMIEUM, 0, 0},
  {KSC_PIEUP, KSC_RIEUL, 0},
  {KSC_PIEUP, KSC_PHIEUPH, 0},
  {KSC_PIEUP, KSC_HIEUH, 0},
  {KSC_KAPYEOUNPIEUP, 0, 0},
  {KSC_SIOS_KIYEOK, 0, 0},
  {KSC_SIOS_TIKEUT, 0, 0},
  {KSC_SIOS, KSC_RIEUL, 0},
  {KSC_SIOS_PIEUP, 0, 0},
  {KSC_PANSIOS, 0, 0},
  {KSC_IEUNG, KSC_KIYEOK, 0},
  {KSC_IEUNG, KSC_KIYEOK, KSC_KIYEOK},
  {KSC_SSANGIEUNG, 0, 0},
  {KSC_IEUNG, KSC_KHIEUKH, 0},
  {KSC_YESIEUNG, 0, 0},
  {KSC_YESIEUNG, KSC_SIOS, 0},
  {KSC_YESIEUNG, KSC_PANSIOS, 0},
  {KSC_PHIEUPH, KSC_PIEUP, 0},
  {KSC_KAPYEOUNPHIEUPH, 0, 0},
  {KSC_HIEUH, KSC_NIEUN, 0},
  {KSC_HIEUH, KSC_RIEUL, 0},
  {KSC_HIEUH, KSC_MIEUM, 0},
  {KSC_HIEUH, KSC_PIEUP, 0},
  {KSC_YEORINHIEUH, 0, 0},
  /* reserved */
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0}
};

