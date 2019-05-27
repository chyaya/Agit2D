/*
You can apply the shader on any sprite, background, object, layer, surface.
If you need to make fullscreen effect, you can make it with different ways:

1.  Depth/Object way (current demo) — is to create two objects on different layers,
    o_shader_start on the layer which you wish to start applying shader and o_shader_end
    on the layer you need to stop applying the shader. All objects between this two
    layers will be recolored based on the shader.
2.	Layer way — is to create two scripts shader_start and shader_end and bind it to
	layers with layer_script_begin similar with the previous way. Also can be binded
	to a one specific layer with layer_script_begin and layer_script_end.
3.  Surface way — is to apply the shader on Application Surface or your custom surface.
*/