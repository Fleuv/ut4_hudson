textures/ut4_hudson/spotlight
{
	qer_editorimage textures/ut4_hudson/spotlight.tga
	q3map_lightimage textures/ut4_hudson/spotlight_overlay.tga
	q3map_surfacelight 25000
	q3map_backSplash 25 64
	polygonOffset
	{
		map textures/ut4_hudson/spotlight_overlay.tga
		blendFunc filter
		rgbGen identity
		alphaFunc GE128
	}
	{
		map textures/ut4_hudson/spotlight.tga
		blendFunc add
		alphaFunc GE128
	}
}

textures/ut4_hudson/spotlights
{
	qer_editorimage textures/ut4_hudson/spotlights.tga
	q3map_lightimage textures/ut4_hudson/spotlights.tga
	q3map_surfacelight 5000
	q3map_backSplash 25 72
	{
		map textures/ut4_hudson/spotlights.tga
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/ut4_hudson/spotlights.tga
		blendFunc add
	}
}

textures/ut4_hudson/light_panel
{
	qer_editorimage textures/ut4_hudson/light_panel.tga
	q3map_lightimage textures/ut4_hudson/light_panel_overlay.tga
	q3map_surfacelight 500
	q3map_backSplash 0 32
	{
		map $lightmap	
		rgbGen identity
	}
	{
		map textures/ut4_hudson/light_panel_overlay.tga
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/ut4_hudson/light_panel.tga
		blendFunc add
	}
}

textures/ut4_hudson/light_strip
{
	qer_editorimage textures/ut4_hudson/light_strip.tga
	q3map_lightimage textures/ut4_hudson/light_strip_overlay.tga
	q3map_surfacelight 500
	q3map_backSplash 25 8
	{
		map $lightmap	
		rgbGen identity
	}
	{
		map textures/ut4_hudson/light_strip_overlay.tga
		blendFunc filter
	}
	{
		map textures/ut4_hudson/light_strip.tga
		blendFunc add
	}
}

textures/ut4_hudson/metal_dark
{
	qer_editorimage textures/ut4_hudson/metal_dark.tga
	{
		map textures/ut4_hudson/metal_dark.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/metal_dark_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/ut4_hudson/floor_marble
{
	qer_editorimage textures/ut4_hudson/floor_marble.tga
	{
		map textures/ut4_hudson/floor_marble.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/floor_marble_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}

}

textures/ut4_hudson/glass
{
	qer_editor_image textures/ut4_hudson/glass.tga
	qer_trans 0.8
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	{
		map textures/ut4_hudson/glass.tga
		tcgen environment
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/ut4_hudson/gate_door
{
	qer_editorimage textures/ut4_hudson/metal_dark.tga
        surfaceparm nonsolid
	{
		map textures/ut4_hudson/metal_dark.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/metal_dark_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/ut4_hudson/gate_side
{
	qer_editorimage textures/ut4_hudson/gate_side.tga
	{
		map textures/ut4_hudson/gate_side.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/metal_dark_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/ut4_hudson/gate_side2
{
	qer_editorimage textures/ut4_hudson/gate_side2.tga
	{
		map textures/ut4_hudson/gate_side2.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/metal_dark_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/ut4_hudson/gate_front
{
	qer_editorimage textures/ut4_hudson/gate_front.tga
	{
		map textures/ut4_hudson/gate_front.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/metal_dark_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/ut4_hudson/gate_back
{
	qer_editorimage textures/ut4_hudson/gate_back.tga
	{
		map textures/ut4_hudson/gate_back.tga
		rgbGen identity
	} 
        {
		map textures/ut4_hudson/metal_dark_overlay.tga
                blendFunc add
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/ut4_hudson/ladder
{
	surfaceparm trans
	qer_editorimage textures/ut4_hudson/ladder.tga
	{
		map textures/ut4_hudson/ladder.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc filter
		depthFunc equal
	}
}

textures/ut4_hudson/ladderclip
{
        qer_trans 0.40
        surfaceparm nolightmap
        surfaceparm nomarks
        surfaceparm nodraw
        surfaceparm nonsolid
        surfaceparm playerclip
        surfaceparm noimpact
        surfaceparm ladder
        surfaceparm trans
}

textures/ut4_hudson/floor_stand
{
	cull disable
	surfaceparm trans
	qer_editorimage textures/ut4_hudson/floor_stand.tga
	{
		map textures/ut4_hudson/floor_stand.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc filter
		depthFunc equal
	}
}
