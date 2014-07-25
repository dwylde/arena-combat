// Playground - noun: a place where people can play

import Cocoa

class Creature
{
    var bodyParts:[BodyPart] = Human().bodyParts;
    let numEyes = Human().numEyes
    let numArms = Human().numArms
    let numLegs = Human().numLegs
    let size = Human().size
    let type = Human().type
    
    // constructor to use when body parts and creature size are non-standard
    init(bodyParts: [BodyPart], size: CreatureSize)
    {
        self.numEyes = 0
        self.numArms = 0
        self.numLegs = 0
        self.bodyParts = bodyParts
        self.size = size
        
        for part in self.bodyParts
        {
            if (part.type == .UpperLeg)
            {    numLegs++  }
            else if (part.type == .UpperArm)
            {   numArms++  }
            else if (part.type == .Eye)
            {   numEyes++  }
        }
    }
    
    convenience init()
    {
        self.init(bodyParts: Human().bodyParts, size: Human().size)
    }
}

class BodyPart
{
    var type:BodyPartType           = .Head;
    var location:BodyPartLocation   = .None;
    var health:BodyPartHealth       = .Healthy;
    
    init(type: BodyPartType, health: BodyPartHealth?, location: BodyPartLocation?)
    {
        self.type = type
        
        if(health) { self.health = health! }
        else { self.health = .Healthy }
        
        if(location) { self.location = location! }
        else { self.location = .None }
    }
    
    convenience init()
    {
        self.init(type:BodyPartType.Head, health:BodyPartHealth.Healthy, location:BodyPartLocation.None)
    }
}


// Type/name of body part (ie: Head)
enum BodyPartType
{
    case Head, Eye, Nose, Ear, Mouth, Teeth, Jaw
    case Neck, UpperBody, LowerBody, Body
    case UpperArm, LowerArm, Arm, Hand
    case UpperLeg, LowerLeg, Leg, Foot
    case Brain, Heart, Lung, Guts, Spine, Kidney
}

// Location (relative) of body part (ie: left, upper)
enum BodyPartLocation
{
    case Right, Left, Upper, Lower
    case Front, Rear, Middle
    case Top, Bottom, Inner, Outer
    case None
}

// Health of the body part (ie: Healthy, Broken)
enum BodyPartHealth
{
    case Healthy
    case Bruised
    case Bleeding
    case Injured
    case Traumatized
    case Broken
    case Severed
}

// Size of the body part (Medium being roughly the scale of human body proportions)
enum CreatureSize
{
    case Dimunitive // ie: Fly
    case Tiny       // ie: Cat
    case Small      // ie: Dog
    case Medium     // ie: Human
    case Large      // ie: Horse
    case Huge       // ie: Rhino
    case Giant      // ie: Elephant
    case Colossal   // ie: Blue Whale
}

enum CreatureType
{
    case Human
    case Cat
    case Dog
}

struct Human
{
        
    var bodyParts: [BodyPart] =
           [BodyPart(type: BodyPartType.Head, health: nil, location: nil),
            BodyPart(type: BodyPartType.UpperBody, health: nil, location: nil),
            BodyPart(type: BodyPartType.LowerBody, health: nil, location: nil),
            BodyPart(type: BodyPartType.UpperArm, health: nil, location: BodyPartLocation.Left),
            BodyPart(type: BodyPartType.UpperArm, health: nil, location: BodyPartLocation.Right),
            BodyPart(type: BodyPartType.LowerArm, health: nil, location: BodyPartLocation.Left),
            BodyPart(type: BodyPartType.LowerArm, health: nil, location: BodyPartLocation.Right),
            BodyPart(type: BodyPartType.Hand, health: nil, location: BodyPartLocation.Left),
            BodyPart(type: BodyPartType.Hand, health: nil, location: BodyPartLocation.Right),
            BodyPart(type: BodyPartType.UpperLeg, health: nil, location: BodyPartLocation.Left),
            BodyPart(type: BodyPartType.UpperLeg, health: nil, location: BodyPartLocation.Right),
            BodyPart(type: BodyPartType.LowerLeg, health: nil, location: BodyPartLocation.Left),
            BodyPart(type: BodyPartType.LowerLeg, health: nil, location: BodyPartLocation.Right),
            BodyPart(type: BodyPartType.Foot, health: nil, location: BodyPartLocation.Left),
            BodyPart(type: BodyPartType.Foot, health: nil, location: BodyPartLocation.Right)]
    
    let numArms = 2;
    let numLegs = 2;
    let numEyes = 2;
    let size = CreatureSize.Medium
    let type = CreatureType.Human
    
}
