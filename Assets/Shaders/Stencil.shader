Shader "Custom/Stencil"
{
    Properties
    {
        _StencilID ("Stecil ID", Range(0, 255)) = 0 
    }
    SubShader
    {
        Tags 
        { 
            "RenderType"="Opaque"
            "RenderPipeline"="UniversalPipeline"
            "Queue"="Geometry" 
        }

        Pass
        {
            Blend Zero One
            ZWrite Off

            Stencil 
            {
                Ref 1
                Comp Always 
                Pass Replace
                Fail Keep
            }
        }
    }
}
