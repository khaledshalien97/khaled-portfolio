
import 'package:khaled_portfolio/constants/images_path.dart';

class ProjectUtils {
  final String coverImg;
  final String title;
  final String subTitle;
  final String description;
  final String githubLink;
  final String appStoreLink;
  final String androidStoreLink;
  final List<String> images;

  ProjectUtils({
    required this.coverImg,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.githubLink,
    required this.images,
    required this.appStoreLink,
    required this.androidStoreLink,
  });
}

List<ProjectUtils> workProjectsUitls = [
  ProjectUtils(
    coverImg: taqtakCover,
    title: "Taqtak Application",
    subTitle: "Energy Management System",
    description:
        "Taqtak is an energy management system designed for electrical systems and portfolios. It enables effortless energy monitoring, supported by features such as energy forecasting, proactive notifications, and energy breakdown",
    githubLink: "",
    appStoreLink: "https://apps.apple.com/jo/app/taqtak/id1567871162",
    androidStoreLink:
        "https://play.google.com/store/apps/details?id=com.algebra.taqtak",
    images: [
      taqtak1,
      taqtak2,
      taqtak3,
      taqtak4,
      taqtak5,
      taqtak6,
    ],
  ),
  ProjectUtils(
    coverImg: donefyCover,
    title: "Donefy Application",
    subTitle: "Maintenance Management System",
    description:
        "Donefy is a solution designed to streamline the management of maintenance activities within an organization facility. It serves as a centralized platform that consolidates maintenance information and aids in the efficient handling of maintenance operations",
    githubLink: "",
    appStoreLink:
        "https://apps.apple.com/jo/app/donefy/id1631105051?platform=iphone",
    androidStoreLink: "https://play.google.com/store/search?q=donefy&c=apps",
    images: [
      donefy1,
      donefy2,
      donefy3,
      donefy4,
      donefy5,
      donefy6,
    ],
  ),
];

List<ProjectUtils> hoppyProjectsUitls = [
  ProjectUtils(
    coverImg: addNotesCover,
    title: "Notes Application",
    subTitle: "Notes Application With Hive Database",
    description:
        "Developed a feature-rich Notes application using Flutter and Hive local storage, implementing Cubit state management to ensure a reactive and efficient user experience. The app allows users to add, edit, and delete notes with customizable color options for better organization. Focused on clean architecture principles to ensure scalability, maintainability, and modularity. Delivered an intuitive user interface with smooth state handling and optimized local data storage for seamless offline accessibility. Adhered to industry best practices and modern Flutter development standards to produce a clean and efficient codebase",
    githubLink: "https://github.com/khaledshalien97/notes_app_flutter",
    appStoreLink: "",
    androidStoreLink: "",
    images: [
      notes1,
      notes2,
      notes3,
      notes4,
    ],
  ),
  ProjectUtils(
    coverImg: todoAppCover,
    title: "To-Do Application",
    subTitle: "To-Do App with Clean Architecture",
    description:
        "Developed a robust To-Do application using Flutter and implemented Clean Architecture principles to ensure scalability, maintainability, and modularity. The app includes features such as task creation, editing, and deletion, with a seamless user experience. Integrated state management (Bloc) and adhere to industry best practices to deliver a clean and efficient codebase",
    githubLink:
        "https://github.com/khaledshalien97/To-Do-App-with-Clean-Architecture",
    appStoreLink: "",
    androidStoreLink: "",
    images: [todoApp1],
  ),
  ProjectUtils(
    coverImg: mealCover,
    title: "Meal Application",
    subTitle: "Meal Planning and Recipe Management Application",
    description:
        "Developed a comprehensive meal planning application using Flutter, allowing users to browse, organize, and customize meal plans. Integrated features include recipe search, ingredient tracking, and nutritional information. The app also offers personalized meal recommendations and the ability to save favorite meals",
    githubLink: "https://github.com/khaledshalien97/Meal_Application",
    appStoreLink: "",
    androidStoreLink: "",
    images: [],
  ),
  ProjectUtils(
    coverImg: bmiCover,
    title: "BMI Calculator Application",
    subTitle: "Body Mass Index Calculation App",
    description:
        "Developed a user-friendly BMI calculator using Flutter to help users easily determine their Body Mass Index. The application features a clean, intuitive interface and provides immediate feedback based on user input of height and weight. Implemented logic to categorize BMI results into different health ranges, offering personalized tips for users. The app uses responsive design to ensure optimal performance across various devices and screen sizes",
    githubLink: "https://github.com/khaledshalien97/BMI-Calculator",
    appStoreLink: "",
    androidStoreLink: "",
    images: [bmiCover],
  ),
  ProjectUtils(
    coverImg: weatherCover,
    title: "Weather Application",
    subTitle: "Weather Forecasting Application",
    description:
        "Built a real-time weather application using Flutter, enabling users to get current weather updates and forecasts for any location. The app features live weather data, including temperature, humidity, and wind speed, fetched from a reliable API. Implemented location-based weather retrieval with GPS integration and a visually engaging user interface. The app also offers multi-day forecasts, weather alerts, and dynamic UI changes based on weather conditions, ensuring a seamless and interactive user experience",
    githubLink: "https://github.com/khaledshalien97/Weather-Application",
    appStoreLink: "",
    androidStoreLink: "",
    images: [
      weather1,
      weather2,
      weather3,
      weather4,
      weather5,
      weather6,
      weather7,
      weather8
    ],
  ),
  ProjectUtils(
    coverImg: placeholderImage,
    title: "Chat Application",
    subTitle: "Chat Application with Firebase",
    description:
        "Developed a real-time chat application using Flutter and Firebase, allowing users to send and receive messages instantly. Integrated Firebase for authentication, cloud storage, and real-time database management. The app features user login, registration, and chat rooms for individual and group conversations. Implemented a responsive and modern UI with real-time message updates, media sharing capabilities, and push notifications. This project demonstrates effective use of Firebase services",
    githubLink: "https://github.com/khaledshalien97/Chat-Application",
    appStoreLink: "",
    androidStoreLink: "",
    images: [],
  ),
  ProjectUtils(
    coverImg: placeholderImage,
    title: "Dice Game Application",
    subTitle: "Roll the Dice, Test Your Luck!",
    description:
        "The Dice Game is a fun and interactive app that brings a simple yet exciting dice-rolling experience to your fingertips. Whether you’re playing alone or with friends, roll the dice to test your luck and challenge yourself to hit the winning number. With a sleek interface and smooth animations, this game is perfect for quick fun or as a companion for board games",
    githubLink: "https://github.com/khaledshalien97/Dice-Game--flutter",
    appStoreLink: "",
    androidStoreLink: "",
    images: [],
  ),
];

List<ProjectUtils> uiProjectsUitls = [
  ProjectUtils(
    coverImg: placeholderImage,
    title: "Trip Application",
    subTitle: "Plan Your Journey, Explore the World",
    description:
        "Beautiful and animated Simple Travel Application UI with Flutter",
    githubLink: "https://github.com/khaledshalien97/Trip-Application",
    appStoreLink: "",
    androidStoreLink: "",
    images: [
      trip1,
      trip2,
      trip3,
      trip4,
    ],
  ),
  ProjectUtils(
    coverImg: travelCover,
    title: "Travel Application",
    subTitle: "",
    description:
        "beautiful and animated Simple Travel Application UI with Flutter",
    githubLink: "https://github.com/khaledshalien97/Travel-application",
    appStoreLink: "",
    androidStoreLink: "",
    images: [
      travel3,
      travel1,
      travel2,
    ],
  ),
  ProjectUtils(
    coverImg: deliveryFoodCover,
    title: "Food Delivery Application",
    subTitle: "Delicious Meals Delivered to Your Doorstep",
    description:
        "This Food Delivery App features a clean and intuitive user interface designed for seamless navigation. Users can explore a variety of food categories, including burgers, pizzas, and kebabs, with just a tap. The app highlights free delivery options and provides visually appealing product cards with pricing and descriptions to enhance the browsing experience. Whether you're craving a juicy burger or a slice of pizza, this app ensures a delightful and hassle-free food ordering process",
    githubLink: "https://github.com/khaledshalien97/Food-Delivery-UI-App",
    appStoreLink: "",
    androidStoreLink: "",
    images: [
      delivery1,
      delivery2,
      delivery3,
      delivery4,
      delivery5,
      delivery6,
      delivery7,
    ],
  ),
  ProjectUtils(
    coverImg: lifeStyleCover,
    title: "LifeStyle Sale Application",
    subTitle: "Shop Lifestyle Products with Elegance and Ease",
    description:
        "Discover the elegance of simplicity with this Lifestyle Sale App. The app's modern design showcases an inviting and user-friendly interface, perfect for exploring lifestyle products. Featuring a prominent promotional banner for exclusive sales, followed by a visually appealing grid of product images, the app makes shopping easy and enjoyable. Its minimalist layout ensures smooth navigation, creating a seamless experience for users to browse, discover, and shop their favorite items",
    githubLink: "https://github.com/khaledshalien97/Lifestyle-UI-App",
    appStoreLink: "",
    androidStoreLink: "",
    images: [lifeStyle1, lifeStyle2],
  ),
  ProjectUtils(
    coverImg: verticalappCenter,
    title: "Wristwatch Showcase App",
    subTitle: "Immersive Wristwatch Gallery with Vertical Card Pager",
    description:
        "This Flutter application provides a sleek and visually appealing gallery of wristwatches, featuring a vertical card pager for an engaging user experience. Each card highlights a high-resolution image of a wristwatch, with smooth scrolling transitions to captivate the viewer. The app combines modern design principles with an intuitive interface, showcasing my skills in Flutter development and creative UI design",
    githubLink: "https://github.com/khaledshalien97/WristWatch-UI-App",
    appStoreLink: "",
    androidStoreLink: "",
    images: [verticalappleft, verticalappCenter, verticalappRight],
  ),
  ProjectUtils(
    coverImg: coverplant,
    title: "Plant Shopping App",
    subTitle:
        "Discover & Shop Beautiful Plants with Ease",
    description:
        "This Flutter application offers a seamless and visually appealing shopping experience for plant enthusiasts. It features a modern UI with a well-structured layout, allowing users to browse, search, and favorite plants effortlessly. The app incorporates a clean and intuitive design with smooth transitions, interactive elements, and category-based filtering.the app ensures high performance, scalability, and maintainability. This project highlights my expertise in Flutter development, UI/UX design, API integration, and state management, demonstrating my ability to create engaging and efficient mobile applications.",
    githubLink: "https://github.com/khaledshalien97/Plant-UI-app",
    appStoreLink: "",
    androidStoreLink: "",
    images: [
      plant1,
      plant2,
      plant3,
      plant4,
      plant5,
      plant6,
      plant7,
      plant8,
      plant9,
      plant10,
      plant11,
      plant12,
      plant13,
    ],
  ),
];
