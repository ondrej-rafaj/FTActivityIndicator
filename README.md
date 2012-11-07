FTActivityIndicator
===================

Use:
	
	FTActivityIndicator *ai = [[FTActivityIndicator alloc] initWithActivityIndicatorStyle:[FTActivityIndicatorStyleBoldCircleArrow instance]];
	[ai setRotationDuration:2.5];
	[ai setRevertedRotation:NO];
	[self.view addSubview:ai];
	[ai startAnimating];
	
