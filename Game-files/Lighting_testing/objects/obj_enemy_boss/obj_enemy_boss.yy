{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_boss",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"monster_sprite","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"spr_spider_boss",},
  ],
  "parent": {
    "name": "Characters",
    "path": "folders/Objects/Characters.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy_parent",
    "path": "objects/obj_enemy_parent/obj_enemy_parent.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"range","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"50","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_spider_boss",
    "path": "sprites/spr_spider_boss/spr_spider_boss.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}