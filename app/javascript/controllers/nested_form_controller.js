import NestedForm from '@stimulus-components/rails-nested-form'

export default class extends NestedForm {
  connect() {
    super.connect()
    console.log('nested forms controller connected.')
  }
}
