# Java Web Application

# commit by linux user

A simple Java web application built with Maven that packages to a WAR file.

## Project Structure

```
webapp/
├── pom.xml                           # Maven configuration
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/webapp/
│   │   │       └── HelloServlet.java # Sample servlet
│   │   └── webapp/
│   │       ├── index.jsp             # Welcome page
│   │       └── WEB-INF/
│   │           └── web.xml           # Deployment descriptor
│   └── test/
│       └── java/
│           └── HelloServletTest.java # Sample test
└── README.md
```

## Prerequisites

- Java 11 or higher
- Maven 3.6+ (install using `brew install maven` on macOS)
- Application server (Tomcat, Jetty, etc.) for deployment

## Building the Application

### Install Maven (if not already installed)
```bash
# On macOS
brew install maven

# On Ubuntu/Debian
sudo apt update
sudo apt install maven

# On Windows (using Chocolatey)
choco install maven
```

### Build Commands

```bash
# Navigate to project directory
cd webapp

# Clean and compile
mvn clean compile

# Run tests
mvn test

# Package as WAR file
mvn package

# Clean, test, and package in one command
mvn clean package
```

### Generated WAR File

After running `mvn package`, the WAR file will be created at:
```
target/webapp.war
```

## Deployment

### Deploy to Tomcat
1. Copy `target/webapp.war` to Tomcat's `webapps` directory
2. Start Tomcat
3. Access the application at `http://localhost:8080/webapp`

### Deploy to Other Servers
- **Jetty**: Copy WAR to Jetty's `webapps` directory
- **WildFly**: Copy WAR to `standalone/deployments` directory
- **WebLogic**: Use admin console to deploy the WAR file

## Application Features

- **Welcome Page**: `index.jsp` with interactive form
- **Hello Servlet**: Simple servlet at `/hello` endpoint
- **Session Management**: Basic session handling
- **Responsive Design**: Mobile-friendly UI

## Development

### Running Tests
```bash
mvn test
```

### Development Mode
For development, you can use Maven plugins like Jetty:

```bash
# Add Jetty plugin to pom.xml and run:
mvn jetty:run
```

### IDE Integration
- Import as Maven project in IntelliJ IDEA or Eclipse
- IDE will automatically download dependencies
- Use IDE's built-in Tomcat integration for development

## Customization

- Modify `src/main/webapp/index.jsp` for the welcome page
- Add new servlets in `src/main/java/com/example/webapp/`
- Update `src/main/webapp/WEB-INF/web.xml` for configuration
- Add dependencies in `pom.xml` as needed

## Technologies Used

- **Java 11**: Programming language
- **Maven**: Build tool and dependency management
- **Servlet API 4.0**: Web application framework
- **JSP**: Server-side page templating
- **JSTL**: JSP Standard Tag Library
- **JUnit 5**: Testing framework

