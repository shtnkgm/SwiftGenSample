// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  internal typealias AssetColorTypeAlias = NSColor
  internal typealias AssetImageTypeAlias = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  internal typealias AssetColorTypeAlias = UIColor
  internal typealias AssetImageTypeAlias = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Animal {

    internal static let animalMark01Buta = ImageAsset(name: "animal/animal_mark01_buta")
    internal static let animalMark02Kuma = ImageAsset(name: "animal/animal_mark02_kuma")
    internal static let animalMark03Inu = ImageAsset(name: "animal/animal_mark03_inu")
    internal static let animalMark04Neko = ImageAsset(name: "animal/animal_mark04_neko")
    internal static let animalMark05Zou = ImageAsset(name: "animal/animal_mark05_zou")
    internal static let animalMark06Uma = ImageAsset(name: "animal/animal_mark06_uma")
    internal static let animalMark07Lion = ImageAsset(name: "animal/animal_mark07_lion")
    internal static let animalMark08Kaba = ImageAsset(name: "animal/animal_mark08_kaba")
    internal static let animalMark09Tora = ImageAsset(name: "animal/animal_mark09_tora")
    internal static let animalMark10Usagi = ImageAsset(name: "animal/animal_mark10_usagi")
    internal static let animalMark11Panda = ImageAsset(name: "animal/animal_mark11_panda")
    internal static let animalMark12Saru = ImageAsset(name: "animal/animal_mark12_saru")
    internal static let animalMark13Penguin = ImageAsset(name: "animal/animal_mark13_penguin")
    internal static let animalMark14Hitsuji = ImageAsset(name: "animal/animal_mark14_hitsuji")
    internal static let animalMark15Koala = ImageAsset(name: "animal/animal_mark15_koala")
    internal static let animalMark16Risu = ImageAsset(name: "animal/animal_mark16_risu")
  }
  internal enum Number {

    internal static let numberDigtal0 = ImageAsset(name: "number/number_digtal0")
    internal static let numberDigtal1 = ImageAsset(name: "number/number_digtal1")
    internal static let numberDigtal2 = ImageAsset(name: "number/number_digtal2")
    internal static let numberDigtal3 = ImageAsset(name: "number/number_digtal3")
    internal static let numberDigtal4 = ImageAsset(name: "number/number_digtal4")
    internal static let numberDigtal5 = ImageAsset(name: "number/number_digtal5")
    internal static let numberDigtal6 = ImageAsset(name: "number/number_digtal6")
    internal static let numberDigtal7 = ImageAsset(name: "number/number_digtal7")
    internal static let numberDigtal8 = ImageAsset(name: "number/number_digtal8")
    internal static let numberDigtal9 = ImageAsset(name: "number/number_digtal9")
  }

  // swiftlint:disable trailing_comma
  internal static let allColors: [ColorAsset] = [
  ]
  internal static let allDataAssets: [DataAsset] = [
  ]
  internal static let allImages: [ImageAsset] = [
    Animal.animalMark01Buta,
    Animal.animalMark02Kuma,
    Animal.animalMark03Inu,
    Animal.animalMark04Neko,
    Animal.animalMark05Zou,
    Animal.animalMark06Uma,
    Animal.animalMark07Lion,
    Animal.animalMark08Kaba,
    Animal.animalMark09Tora,
    Animal.animalMark10Usagi,
    Animal.animalMark11Panda,
    Animal.animalMark12Saru,
    Animal.animalMark13Penguin,
    Animal.animalMark14Hitsuji,
    Animal.animalMark15Koala,
    Animal.animalMark16Risu,
    Number.numberDigtal0,
    Number.numberDigtal1,
    Number.numberDigtal2,
    Number.numberDigtal3,
    Number.numberDigtal4,
    Number.numberDigtal5,
    Number.numberDigtal6,
    Number.numberDigtal7,
    Number.numberDigtal8,
    Number.numberDigtal9,
  ]
  // swiftlint:enable trailing_comma
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal struct ColorAsset {
  internal fileprivate(set) var name: String

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  internal var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
}

internal extension AssetColorTypeAlias {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct DataAsset {
  internal fileprivate(set) var name: String

  #if os(iOS) || os(tvOS) || os(OSX)
  @available(iOS 9.0, tvOS 9.0, OSX 10.11, *)
  internal var data: NSDataAsset {
    return NSDataAsset(asset: self)
  }
  #endif
}

#if os(iOS) || os(tvOS) || os(OSX)
@available(iOS 9.0, tvOS 9.0, OSX 10.11, *)
internal extension NSDataAsset {
  convenience init!(asset: DataAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(name: asset.name, bundle: bundle)
    #elseif os(OSX)
    self.init(name: NSDataAsset.Name(asset.name), bundle: bundle)
    #endif
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  internal var image: AssetImageTypeAlias {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = AssetImageTypeAlias(named: name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = AssetImageTypeAlias(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

internal extension AssetImageTypeAlias {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

private final class BundleToken {}
