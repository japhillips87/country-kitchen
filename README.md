# README

Here is a little Rails API using GraphQL. To get setup, bundle, create, migrate, seed and start the server with `rails s`. I have added GraphiQL at the route `localhost:3000/graphiql`. I currently only support queries for categories, ingredients, and recipes, and a mutation to create a recipe along with it's nested ingredients. Some sample queries are:
```
{
  recipes {
    id
    name
  }
}
```

```
{
  recipes {
    name
    directions
    ingredients {
      amount
      unit
      name
    }
  }
}
```

```
{
  categories {
    name
    recipes {
      name
      description
    }
  }
}
```

```
mutation {
  createRecipe(input: {
    attributes: {
    	name: "Southern Caramel Icing"
   	 	description: "True southern, made from scratch, caramel cake. https://www.youtube.com/watch?v=iCyoekBdMRE"
   		 directions: "Add the karo syrup, 3 1/2 cups of sugar, butter, and milk to a medium to large sauce pan. Add the remaining 1/2 cup sugar to a small cast iron skillet over low to medium heat. Make sure the sugar melts evenly by incorporating the unmelted sugar to the melted sugar. At the same time heat the milk mixture over high heat stirring constantly. You can stop stirring when the milk mixture is boiling. When the melted sugar starts bubbling and the milk mixture is at a rapid boil, pour the melted sugar into the milk mixture while stirring. Remove from heat when it reaches the soft ball stage. Move pot to a cold water bath in the sink. Beat with hand mixer. Add vanilly when it has cooled a bit. Continue to beat until it thickens. Ice the cake. If the icing gets too stiff, add a bit of milk to loosen it."
   		 categoryId: 4
  	   ingredientsAttributes: [
   		   {
   	  	   name: "sugar"
   	  	   amount: "3 1/2 + 1/2"
   		     unit: "cups"
   		   },
   		   {
   		 	   name: "butter"
   	 	     amount: "2"
     		   unit: "sticks"
    		 },
         {
    	 	   name: "milk"
     		   amount: "1"
     		   unit: "cup"
    	   },
    	   {
    	     name: "karo syrup"
     	     amount: "1"
    	     unit: "Tbsp"
    	   },
    	   {
    	     name: "vanilla"
    	     amount: "1"
     	     unit: "tsp"
     	   }
   	   ]
     }
  }) {
   recipe {
     name
     description
     directions
     ingredients {
      name
      amount
      unit
    }
   }
   errors
 }
}
```
