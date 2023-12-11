#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

#define MAX_FOOD_ITEMS 10

// Structure representing the rice cooker
typedef struct RiceCooker {
  bool isOpen;              // Lid open/closed state
  bool power;               // Cooker on/off state
  int cookingTime;         // Cooking time in minutes
  int foodCount;            // Number of food items
  char foodItems[MAX_FOOD_ITEMS][100]; // Array of food items
} RiceCooker;

// Function to open the rice cooker lid
void openLid(RiceCooker *cooker) {
  cooker->isOpen = true;
  printf("Rice cooker lid opened.\n");
}

// Function to close the rice cooker lid
void closeLid(RiceCooker *cooker) {
  cooker->isOpen = false;
  printf("Rice cooker lid closed.\n");
}

// Function to set the rice cooker power
void setPower(RiceCooker *cooker, char *power) {
  if (strcmp(power, "on") == 0) {
    cooker->power = true;
    printf("Rice cooker turned on.\n");
  } else if (strcmp(power, "off") == 0) {
    cooker->power = false;
    printf("Rice cooker turned off.\n");
  } else {
    printf("Invalid power state. Please use 'on' or 'off'.\n");
  }
}

// Function to set the rice cooker cooking time
void setCookingTime(RiceCooker *cooker, int time) {
  if (time > 0) {
    cooker->cookingTime = time;
    printf("Cooking time set to %d minutes.\n", time);
  } else {
    printf("Invalid cooking time. Please enter a positive number.\n");
  }
}

// Function to add food to the rice cooker
void addFood(RiceCooker *cooker, char *food) {
  if (cooker->foodCount < MAX_FOOD_ITEMS) {
    strcpy(cooker->foodItems[cooker->foodCount], food);
    cooker->foodCount++;
    printf("Food added to the rice cooker: %s\n", food);
  } else {
    printf("Rice cooker is full. Cannot add more food.\n");
  }
}

// Function to cook rice
void cook(RiceCooker *cooker) {
  if (!cooker->power) {
    printf("Rice cooker is off. Turn it on before cooking.\n");
  } else if (cooker->isOpen) {
    printf("Rice cooker lid is open. Close it before cooking.\n");
  } else if (cooker->foodCount == 0) {
    printf("Rice cooker is empty. Add food before cooking.\n");
  } else {
    printf("Cooking rice...\n");
    for (int i = 0; i < cooker->cookingTime; i++) {
      printf(".");
      fflush(stdout);
      sleep(1); // Wait for 1 second
    }
    printf("\nRice cooked!\n");
  }
}

// Function to print the rice cooker status
void printStatus(RiceCooker *cooker) {
  printf("Rice cooker status:\n");
  printf("  Lid:  %s\n", cooker->isOpen ? "Open" : "Closed");
  printf("  Power: %s\n", cooker->power ? "On" : "Off");
  printf("  Cooking time: %d minutes\n", cooker->cookingTime);
  printf("  Food items:\n");
  for (int i = 0; i < cooker->foodCount; i++) {
    printf("    %s\n", cooker->foodItems[i]);
  }
  printf("\n");
}

// Main function
int main() {
  // Initialize rice cooker
  RiceCooker riceCooker;
  riceCooker.isOpen = false;
  riceCooker.power = false;
  riceCooker.cookingTime = 0;
  riceCooker.foodCount = 0;

  // Start the application
  char input[100];
  bool running = true;
  while (running) {
    printf("Enter a command: (open/close lid, set power, set time, add food, cook, status, quit)\
    scanf("%s", input);
    switch (tolower(input[0])) {
      case 'o': // Open lid
        openLid(&riceCooker);
        break;
      case 'c': // Close lid
        closeLid(&riceCooker);
        break;
      case 's': // Set power
        if (tolower(input[1]) == 'e') { // Set power on
          setPower(&riceCooker, "on");
        } else if (tolower(input[1]) == 'o') { // Set power off
          setPower(&riceCooker, "off");
        } else {
          printf("Invalid power command.\n");
        }
        break;
      case 't': // Set cooking time
        int time;
        printf("Enter cooking time (minutes): ");
        scanf("%d", &time);
        setCookingTime(&riceCooker, time);
        break;
      case 'a': // Add food
        char food[100];
        printf("Enter food item: ");
        scanf("%s", food);
        addFood(&riceCooker, food);
        break;
      case 'k': // Cook rice
        cook(&riceCooker);
        break;
      case 'i': // Print status
        printStatus(&riceCooker);
        break;
      case 'q': // Quit
        running = false;
        break;
      default:
        printf("Invalid command. Please try again.\n");
        break;
    }
  }

  printf("Rice cooker application closed.\n");

  return 0;
}
