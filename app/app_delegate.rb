class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @rootViewController = UIViewController.alloc.init
    @rootViewController.title = 'motion-core-animator'
    @rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(@rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    add_animation_view

    true
  end

  def add_animation_view
    w, h = UIScreen.mainScreen.bounds.size.to_a
    @av = ExplosionView.new
    @av.center = [w/2, h/2]
    @rootViewController.view.addSubview(@av)

    @av.addExplodeAnimationWithCompletion(->(finished) {
      puts "finished the animation"
    })
  end

end
