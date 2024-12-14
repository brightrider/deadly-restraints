Scriptname BRDRScript extends ActiveMagicEffect

Event OnEffectStart(Actor akTarget, Actor akCaster)
    Debug.MessageBox(akTarget.GetBaseObject().GetName())
EndEvent
