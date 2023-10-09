# Spawn Dart SDK

Dart User Language Support for [Spawn](https://github.com/eigr/spawn).

## Table of Contents

1. [Overview](#overview)
2. [Getting Started](#getting-started)

### Overview

Spawn is a Stateful Serverless Runtime and Framework basead on the [Actor Model](https://youtu.be/7erJ1DV_Tlo) and operates as a Service Mesh.

Spawn's main goal is to remove the complexity in developing services or microservices, providing simple and intuitive APIs, as well as a declarative deployment and configuration model and based on a Serverless architecture and Actor Model.
This leaves the developer to focus on developing the business domain while the platform deals with the complexities and infrastructure needed to support the scalable, resilient, distributed, and event-driven architecture that modern systems requires.

Spawn is based on the sidecar proxy pattern to provide a polyglot Actor Model framework and platform.
Spawn's technology stack, built on the [BEAM VM](https://www.erlang.org/blog/a-brief-beam-primer/) (Erlang's virtual machine) and [OTP](https://www.erlang.org/doc/design_principles/des_princ.html), provides support for different languages from its native Actor model.

For more information consult the main repository [documentation](https://github.com/eigr/spawn).

### Getting Started

TODO

```dart
import 'package:spawn_dart/spawn_dart.dart';

void main() {
  var spawnSystem = SpawnSystem();

  spawnSystem.start();
}
```
