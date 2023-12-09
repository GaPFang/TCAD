Title ""

Controls {
}

IOControls {
	outputFile = "/home/B11901003/MOSFET/p2-2/MOSFET"
	EnableSections
}

Definitions {
	Constant "n1e20" {
		Species = "DopingConcentration"
		Value = 1e+20
	}
	Constant "p3e17" {
		Species = "DopingConcentration"
		Value = -3e+17
	}
	Refinement "Def_Body" {
		MaxElementSize = ( 0.1 0.1 0 )
		MinElementSize = ( 0.1 0.1 0 )
	}
	Refinement "Def_Channel" {
		MaxElementSize = ( 0.001 0.0005 0 )
		MinElementSize = ( 0.001 0.0005 0 )
	}
	Refinement "Def_BelowChannel" {
		MaxElementSize = ( 0.01 0.01 0 )
		MinElementSize = ( 0.01 0.01 0 )
	}
	Refinement "Def_SD" {
		MaxElementSize = ( 0.05 0.05 0 )
		MinElementSize = ( 0.05 0.05 0 )
	}
	Refinement "Def_Oxide" {
		MaxElementSize = ( 0.002 0.001 0 )
		MinElementSize = ( 0.002 0.001 0 )
	}
}

Placements {
	Constant "Place_Source" {
		Reference = "n1e20"
		EvaluateWindow {
			Element = Rectangle [(-0.5 0) (-0.05 1)]
		}
	}
	Constant "Place_Drain" {
		Reference = "n1e20"
		EvaluateWindow {
			Element = Rectangle [(0.05 0) (0.5 1)]
		}
	}
	Constant "Place_Substrate" {
		Reference = "p3e17"
		EvaluateWindow {
			Element = region ["Substrate"]
		}
	}
	Refinement "Place_Body" {
		Reference = "Def_Body"
		RefineWindow = Rectangle [(-0.5 1) (0.5 5)]
	}
	Refinement "Place_Channel" {
		Reference = "Def_Channel"
		RefineWindow = Rectangle [(-0.05 0) (0.05 0.01)]
	}
	Refinement "Place_BelowChannel" {
		Reference = "Def_BelowChannel"
		RefineWindow = Rectangle [(-0.05 0.01) (0.05 1)]
	}
	Refinement "Place_Source" {
		Reference = "Def_SD"
		RefineWindow = Rectangle [(-0.5 0) (-0.05 1)]
	}
	Refinement "Place_Drain" {
		Reference = "Def_SD"
		RefineWindow = Rectangle [(0.05 0) (0.5 1)]
	}
	Refinement "Place_Oxide" {
		Reference = "Def_Channel"
		RefineWindow = Rectangle [(-0.05 0) (0.05 -0.01)]
	}
}

