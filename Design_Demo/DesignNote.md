##设计原则
1，找出应用中可能需要变化之处，把它们独立出来，不要和那些不需要的变化的代码混在一起。

2，针对接口编程，而不是针对实现编程。【不是很清晰】针对鸭子的例子:如果都采用继承的话，不同的鸭子子类就要实现不同的叫或飞的行为。如果将叫和飞的行为都单独抽出来，那么任何一个鸭子需要飞的行为的话，只要加一个飞行行为的实例(接口或协议),直接调用接口飞行。而不同的飞行行为，由具体的飞行行为类实现。（这样飞行的具体实现就不会绑定在鸭子子类身上了）

3，多用组合，少用继承。has-a(有一个)要比is-a(是一个)灵活。

4，别调用我们，我们会调用你:允许低层组件将自己挂钩到系统上，但是高层组件会决定什么时候和怎样使用这些低层组件。高层组件对待低层组件的方式是"别调用我们，我们会调用你"

--


**原型(Prototype)**应用复制操作的模式。复制指用同一模具生产一系列的产品，模具所基于的物品称为原型。原型决定了最终产品应该是什么样子。尽管产品是用同一模具复制的，但是某些属性，颜色尺寸之类，可以稍有不同。【原型就是实现对象的复制功能】

**工厂方法模式**定义创建对象的接口，让子类决定实例化哪一个类。工厂方法使得一个类的实例化延迟到其子类。
何时使用:

* 编译时无法准确预期要创建的对象的类。
* 类想让其子类决定在运行时创建什么。
* 类有若干辅助类为其子类，而你想将返回哪个子类这一信息局部化。
工厂方法能够给予类在变更返回哪一种对象这一点上更多的灵活性。
**抽象工厂**提供一个创建一系列相关或相互依赖对象的接口，而无需指定他们具体的类。

**抽象工厂和工厂方法对比**

抽象工厂：通过对象组合创建抽象产品；创建多系列产品；必须修改父类的接口才能支持新的产品。
工厂方法:通过类继承创建抽象产品；创建一种产品；子类化创建者并重载工厂方法以创建新产品。

---
创建抽象产品的工厂方法与创建抽象工厂的工厂方法的不同点。
像`intValue`和`boolValue`这样的工厂方法，应在具体工厂(`NSCFNumber`和`NSCFBoolean`)中重载以返回实际值(产品)。其他像`numberWithBool:`和`numberWithInt:`这样的工厂方法并不是为了返回产品，而是为了返回能返回产品的工厂，因此他们不应在具体子类中重载。

**生成器模式**将一个复杂对象的构建与它的表现分离，使得同样的构建过程可以创建不同的表现。【客户(aClient)---承包商/指导者(aDirector)---建造者(aBuilder)】【“什么”和“如何”；构建什么对象；如何构建对象】

**生成器与抽象工厂的对比**
生成器:构建复杂对象；以多个步骤构建对象；以多种方式构建对象;在构建过程的最后一步返回产品；专注一个特定产品。
抽象工厂:构建简单或复杂对象；以单一步骤构建对象；以单一方式构建对象；立刻返回产品;强调一套产品。


**适配器模式**用于连接两种不同种类的对象，使其毫无问题的协同工作。**将一个类的接口转换为客户希望的另外一个接口，适配器模式使得原来由于接口不兼容而不能工作的那些类可以一起工作**(一边是客户端懂得如果使用的目标接口，另一边是客户端一无所知是被适配者，适配器站在两者之间。适配器的主要作用是将被适配者的行为传递给管道另一端的客户端)【将两个不同类的实例的不同的接口，通过适配器将其联系起来】
实现适配器的方式:
一:通过继承来适配两个接口，称为类适配器。
二:对象适配器:与类适配器不同，对象适配器不继承被适配者，而是组合了一个对他的引用。

类适配器与对象适配器对比:
类适配器:只针对单一的adaptee类，把Adaptee适配到Target；易于重载Adaptee的行为，因为是通过直接的子类话进行的适配；只有一个Adapter对象，无需额外的指针间接访问Adaptee

对象适配器:可以适配多个Adaptee及其子类；难以重载Adaptee的行为，需要借助于子类的对象而不是Adaptee本身;需要额外的指针以间接访问Adaptee并适配其行为。

**桥接模式**将抽象部分与它的实现部分分离，使他们都可以独立的变化

**外观模式**为系统中的一组接口提供一个统一的接口。外观定义一个高层接口，让子系统更易于使用。【将比较复杂的几个子系统(模块)通过一个更高的抽象类，将其功能组合起来供客户端使用】

**中介者模式**用一个对象来封装一系列对象的交互方式。中介者使各个对象不需要显示地相互引用，从而使其耦合松散，而且可以独立地改变他们之间的交互.(用于定义一个集中的场所，对象间的交互可以在一个中介者对象中处理。其他对象不必彼此交互。减少它们之间的依存关系。)

**观察者模式**定义对象间的一种一对多的依赖关系，当一个对象的状态发生改变的时候，多有依赖于它的对象得到通知并被自动更新。(主题【可观察的】和观察者)
设计原则：找出程序中会变化的方面，然后将其和固定不变的方面相分离。
`观察者模式中，会改变的是主题的状态，以及观察者的数目和类型。用这个模式，可以改变依赖于主题状态的对象，却不必改变主题。`
设计原则:针对接口编程，不针对实现编程。
`主题和观察者都使用接口:观察者利用主题的接口向主题注册【registerObserver】，而主题利用观察者接口通知观察者【update】。这样可以让两者之间运作正常。同时具有松耦合的优点。`
设计原则:多用组合，少用继承。
`观察着模式利用"组合"将许多观察者组合进主题中，对象之间的这种关系不是通过继承产生的，而是在运行时利用组合的方式而产生的。`

**组合模式**将对象组合成树形结构以表示"部分-整体"的层次结构。组合使得用户对单个对象和组合对象的使用具有一致性。(组合模式的主要目的是要让树形结构中的每个节点具有相同的抽象接口，这样整个结构可以作为一个统一的抽象结构使用，而不暴露其内部表示。对每个节点(叶节点或组合体)的任何操作，可以通过协议或者抽象基类中定义的相同接口来进行。)

**迭代器**提供一种方法顺序访问一个聚合对象(集合)中的各个元素，而又不需暴露该对象的内部表示。

**访问者模式**表示一个作用于某对象结构中的各元素的操作。它让我们可以在不改变各元素的类的前提下定义作用于这些元素的新操作。

**装饰模式**动态的给一个对象添加一些额外的职责。就扩展功能来说，装饰模式相比生成子类更为灵活。
装饰者和被装饰者必须是一样的类型，必须有共同的父类。而装饰者又有一个父类型(组件)的实例（用来持有被装饰者）,具体的装饰者可以增加新行为给所包着的被装饰者。一层一层的套着被装饰者。(最里层为被装饰者，也就是具体组件，外面的层都是具体的装饰者，因为装饰者和被装饰者都是继承于抽象组件，所以用被装饰者生成的装饰者可以被父类指针指向。)【组件可以用抽象类实现，也可以用协议实现】

```
Beverage beverage2 = new DarkRoast();

```

【可以用类别给系统类增加遵守协议，能够将自己的类和系统类抽象出来一个基类】【装饰模式在iOS平台上就是扩展Category的作用。】

* 

**责任链模式**使多个对象都有机会处理请求，从而避免请求的发送者和接受者之间发生耦合。此模式将这些对象连成一条链，并沿着这条链传送请求，直到有一个对象处理它为止。

#算法封装
**模板方法模式**定义一个操作中算法的骨架，而将一些步骤延迟到子类中。模板方法使子类可以重定义算法的某些特定步骤而不改变该算法的结构。【父类模板方法中调用了各个步骤的方法，不同子类根据不同的特定行为去重载不同的步骤的方法】

**策略模式**定义一系列算法，把它们一个个封装起来，并且使他们可以相互替换，本模式使得算法可以独立于使用它的客户而变化。

**命令模式**将请求封装为一个对象，从而可以用不同的请求对客户进行参数化，对请求排队或记录请求日志，以及支持可以撤销的操作。(NSInvocation类)

#性能与对象访问
**享元模式**运用共享技术有效的支持大量细粒度的对象。
**代理模式**为其他对象提供一种代理以控制对这个对象的访问。

#对象状态
**备忘录模式**在不破坏封装的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态，这样以后就可以将该对象恢复到原先保存的状态。

#模板方法模式
**模板方法模式**在一个方法中定义一个算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以在不改变算法结构的情况下，重新定义算法中的某些步骤。【抽象算法中可以加入钩子方法，如果是子类必须要实现的方法或步骤时候，就把这个方法使用为抽象方法，如果某个步骤是可以选择实现与否的，就用钩子方法。(钩子方法在抽象类中作为判断依据，是否加上一些步骤)，子类可以实现钩子方法选择自己是否要这个步骤。】

















































