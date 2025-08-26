---
title: "Mermaid Diagrams Example"
date: 2025-08-26T10:00:00Z
description: "A demonstration of Mermaid diagram support in the theme"
mermaid: true
---

This post demonstrates how to use Mermaid diagrams in your Hugo site with this theme.

## Flowchart Example

Here's a simple flowchart using the mermaid shortcode:

{{< mermaid >}}
graph TD
    A[Start] --> B{Is it?}
    B -->|Yes| C[OK]
    C --> D[Rethink]
    D --> B
    B ---->|No| E[End]
{{< /mermaid >}}

## Sequence Diagram

You can also create sequence diagrams:

{{< mermaid >}}
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
{{< /mermaid >}}

## Class Diagram

Here's a class diagram example:

{{< mermaid >}}
classDiagram
    class Animal {
        +String name
        +int age
        +makeSound()
    }
    class Dog {
        +String breed
        +bark()
    }
    class Cat {
        +boolean indoor
        +meow()
    }
    Animal <|-- Dog
    Animal <|-- Cat
{{< /mermaid >}}

## Configuration

To enable Mermaid diagrams in your posts, add `mermaid: true` to your front matter:

```yaml
---
title: "Your Post Title"
mermaid: true
---
```

You can also customize the Mermaid theme and colors by adding parameters to your post front matter:

```yaml
---
title: "Your Post Title"
mermaid: true
mermaidTheme: "dark"
mermaidPrimaryColor: "#00ff00"
---
```

Available theme options include: `default`, `neutral`, `dark`, `forest`, `base`.

This post demonstrates how to use Mermaid diagrams in your Hugo site with this theme.

## Flowchart Example

Here's a simple flowchart using the mermaid shortcode:

{{< mermaid >}}
graph TD
    A[Start] --> B{Is it?}
    B -->|Yes| C[OK]
    C --> D[Rethink]
    D --> B
    B ---->|No| E[End]
{{< /mermaid >}}

## Sequence Diagram

You can also create sequence diagrams:

{{< mermaid >}}
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
{{< /mermaid >}}

## Class Diagram

Here's a class diagram example:

{{< mermaid >}}
classDiagram
    class Animal {
        +String name
        +int age
        +makeSound()
    }
    class Dog {
        +String breed
        +bark()
    }
    class Cat {
        +boolean indoor
        +meow()
    }
    Animal <|-- Dog
    Animal <|-- Cat
{{< /mermaid >}}
    }
    class Dog {
        +String breed
        +bark()
    }
    class Cat {
        +boolean indoor
        +meow()
    }
    Animal <|-- Dog
    Animal <|-- Cat
{{</* /mermaid */>}}

## Configuration

To enable Mermaid diagrams in your posts, add `mermaid: true` to your front matter:

```yaml
---
title: "Your Post Title"
mermaid: true
---
```

You can also customize the Mermaid theme and colors by adding parameters to your post front matter:

```yaml
---
title: "Your Post Title"
mermaid: true
mermaidTheme: "dark"
mermaidPrimaryColor: "#ff6600"
---
```

Available theme options include: `default`, `neutral`, `dark`, `forest`, `base`.
