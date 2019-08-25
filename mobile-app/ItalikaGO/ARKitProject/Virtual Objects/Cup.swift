import Foundation

class Cup: VirtualObject {

	override init() {
		super.init(modelName: "motoClasica", fileExtension: "scn", thumbImageFilename: "cup", title: "motoClasica")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
