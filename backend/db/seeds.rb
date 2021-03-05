# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.destroy_all
    Character.destroy_all
    Game.destroy_all
    Card.destroy_all
    
    milknhoney = User.create(username: "milknhoney")
    sailorfan = User.create(username: "sailorfan")
    sailormoon = Character.create(character_name: "Sailor Moon")
    sailormercury = Character.create(character_name: "Sailor Mercury")



  game1 = Game.create(user_id: milknhoney.id , character_id: sailormercury.id, time: 1.40, bad_move: 2, good_move: 4)
    Game.create(user_id: sailorfan.id , character_id: sailormoon.id, time: 1.57, bad_move: 4, good_move: 3)
    Game.create(user_id: milknhoney.id, character_id: sailormoon.id, time: 2.42, bad_move: 5, good_move: 2)
#    t.integer :user_id
#    t.integer :character_id
#    t.float :time
#    t.integer :bad_move
#    t.integer :good_move
    
    Card.create(frontImg:"https://lh3.googleusercontent.com/StoZ5InSKnA-klHnBdj5M8-RVRPvWMB4cRv4JzrFCvi--T7x0JFxAx0Br1OO-QYH66unl4CMBq_jVtyOHiTnKoCYX7JdxX-wiD2MZ41H9c2-_nkhjBc_jZRQRqxfUUz_bem9lrsTnA=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"serena" ,game_id: game1.id )
    Card.create(frontImg:"https://lh3.googleusercontent.com/faWMnG7sXzAuNTGMHBz2GUoG8R8dTCXJjXcx-fOCIT12DptIR87wkDar1E9b0WpoRsoqjB0ttrEJmVixAeldEANxFQDARIpF713YR1QR4ReXSE8rKaVLXxdb-1KWHG9fQR86Xej-XA=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"venus", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/aKzDKH55fgfFN8C-ho19d995H1Q-X7m8wax4k72pA1Ot2sMEk01bR06X4MD3wdOHXl7OdRRnQcwRuDM9gh3NdHVPmOQL6l_TIgGpEa32DhTx-mpso2gCA0AwXGQ8RIG5Id9gSdLqxw=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"mercury", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/RTIEPTvSlewiROGdq7Xrn_Cp7QCdIYSIyljkMGRaYm2Tnfgc5MeIjeuLbGEVF7e3hmZRMfMlihIYbwwfUpsXf40xWBm6Ww4SDhnYE45oIe5U4QcWpbCaKEwv0blGh3f0vmSXe4T78w=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"rini", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/VLevyjCzv7LTTVCXCsYxUfe93mo5TstnnLXRsjZl6Glieg9PA990iVy8_7SaN6U3VY-OVUxkmO1OGUPU2pv_OUOVSzqsoDXE0xryY2Xy5bcqoXHTe_LNk6ZSIq5uKftkVOcKyaELJg=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"mars", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/9hHtCbWZ0tJeQNaRClr2vGDnO2Q08zH8M5cBqu8lBNKeGxcr3O1qSwbC_UWc-sZQFwbPQQcXS5-wkIC4fyEalchg3jx6_YbY82XgVxAohGIxWmJQyamLFPP7pk4GiC0tQ21rB__lnQ=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"jupiter", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/IvmGSuIqg2NIn_PgrxZsVdBWdxGOoMaUH-MVezdRgAxrxQNsT7M_zGrReiZ2bLpgL2Zx6BJK1zzflC1ne8ZpQ8BqhYPPEB6lRnSKKWVxGpNMXXPRXdDhjmRrQjI8u4cAt6FpGfCYhg=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"uranus", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/LFv7yX9rcspUoxQ7c-Yk4ZVu7A19iQa_nqJKpLZg3SDwK1AIMSXN-imcszK-pPk6WQFnl_Cj8lVGxv_sreBU0hA3W3lFZny3Y2Q8XuS16HBUPpAaWtJLNcfVyc3fcs1hYghW4uHdgg=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"neptune", game_id: game1.id)
    
    Card.create(frontImg:"https://lh3.googleusercontent.com/StoZ5InSKnA-klHnBdj5M8-RVRPvWMB4cRv4JzrFCvi--T7x0JFxAx0Br1OO-QYH66unl4CMBq_jVtyOHiTnKoCYX7JdxX-wiD2MZ41H9c2-_nkhjBc_jZRQRqxfUUz_bem9lrsTnA=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"serena" ,game_id: game1.id )
    Card.create(frontImg:"https://lh3.googleusercontent.com/faWMnG7sXzAuNTGMHBz2GUoG8R8dTCXJjXcx-fOCIT12DptIR87wkDar1E9b0WpoRsoqjB0ttrEJmVixAeldEANxFQDARIpF713YR1QR4ReXSE8rKaVLXxdb-1KWHG9fQR86Xej-XA=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"venus", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/aKzDKH55fgfFN8C-ho19d995H1Q-X7m8wax4k72pA1Ot2sMEk01bR06X4MD3wdOHXl7OdRRnQcwRuDM9gh3NdHVPmOQL6l_TIgGpEa32DhTx-mpso2gCA0AwXGQ8RIG5Id9gSdLqxw=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"mercury", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/RTIEPTvSlewiROGdq7Xrn_Cp7QCdIYSIyljkMGRaYm2Tnfgc5MeIjeuLbGEVF7e3hmZRMfMlihIYbwwfUpsXf40xWBm6Ww4SDhnYE45oIe5U4QcWpbCaKEwv0blGh3f0vmSXe4T78w=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"rini", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/VLevyjCzv7LTTVCXCsYxUfe93mo5TstnnLXRsjZl6Glieg9PA990iVy8_7SaN6U3VY-OVUxkmO1OGUPU2pv_OUOVSzqsoDXE0xryY2Xy5bcqoXHTe_LNk6ZSIq5uKftkVOcKyaELJg=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"mars", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/9hHtCbWZ0tJeQNaRClr2vGDnO2Q08zH8M5cBqu8lBNKeGxcr3O1qSwbC_UWc-sZQFwbPQQcXS5-wkIC4fyEalchg3jx6_YbY82XgVxAohGIxWmJQyamLFPP7pk4GiC0tQ21rB__lnQ=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"jupiter", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/IvmGSuIqg2NIn_PgrxZsVdBWdxGOoMaUH-MVezdRgAxrxQNsT7M_zGrReiZ2bLpgL2Zx6BJK1zzflC1ne8ZpQ8BqhYPPEB6lRnSKKWVxGpNMXXPRXdDhjmRrQjI8u4cAt6FpGfCYhg=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"uranus", game_id: game1.id)
    Card.create(frontImg:"https://lh3.googleusercontent.com/LFv7yX9rcspUoxQ7c-Yk4ZVu7A19iQa_nqJKpLZg3SDwK1AIMSXN-imcszK-pPk6WQFnl_Cj8lVGxv_sreBU0hA3W3lFZny3Y2Q8XuS16HBUPpAaWtJLNcfVyc3fcs1hYghW4uHdgg=w2400", backImg:"https://lh3.googleusercontent.com/ieZfp_oj_wySAmko14zwtqDuqDVebm_noXQf7NOD83ydsnOHmor8oBGcoQrE-0VUfAq8ZF_ep6IJatcykdKOkd4v4aRh29_ygEcF92RF7ituzCcjr6HHJxvQaNTC4hPqHFWy_6VqXQ=w2400", flipped: false, pair_name:"neptune", game_id: game1.id)

    # create_table :cards do |t|
    #     t.bytea :frontImg
    #     t.bytea :backImg
    #     t.boolean :flipped
    #     t.string :pair_name
    #     t.integer :game_id
  
    #     t.timestamps