function scr_item_effects(_item){
	switch _item {
		case Item.air:
			break
		case Item.invalid:
			break
		case Item.drug_heroin:
			SCR_TEXT("use_item_heroin",true)
			break
		default:
			break
	}
}