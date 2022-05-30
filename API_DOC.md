# API Documentation
Development endpoint: `localhost:3001`

## Objects

### Plant variety

| Attribute | Description                  |  
|-----------|------------------------------|  
|id         | Plant id                     |  
|name       | Plant variety name           |  
|created_at | Date de création             |
|updated_at | Date de mise à jour          |

## Routes

### GET `/plant_varieties`

Returns a collection of plant_varieties

#### Example response
```json
[
  {
    "id":1,
    "name":"Monstera Deliciosa",
    "created_at":"2022-05-29T11:51:20.210Z",
    "updated_at":"2022-05-29T11:51:20.210Z"
  },
  {
    "id":2,
    "name":"Monstera Monkey Mask",
    "created_at":"2022-05-29T11:51:20.272Z",
    "updated_at":"2022-05-29T11:51:20.272Z"
  }
]
```

### GET `/plant_varieties/:id`

Returns a plant_variety object

#### Example response
```json
{
  "id":2,
  "name":"Monstera Monkey Mask",
  "created_at":"2022-05-29T11:51:20.272Z",
  "updated_at":"2022-05-29T11:51:20.272Z"
}
```

### POST `/plant_varieties`

Create a plant_variety and returns it

#### Params
| Attribute | Description          |  
|-----------|----------------------|  
|name       | Plant name           |  

### PUT `/plant_varieties/:id`

Update a plant_variety and returns it

#### Params
| Attribute | Description          |  
|-----------|----------------------|  
|name       | Plant name           |  