/* eslint-disable */
import $ from 'jquery';
/* eslint-enable */

export default function () {
  /**
   * Unbind the space bar handler that is added in the bootstrap-accessibility plugin,
   * the functionality is recreated in this component.
   *
   * See: bootstrap-accessibility.js, line 130 (ish)
   */
  $(document)
    .off(
      'keydown.bs.dropdown.data-api',
      '[data-toggle=dropdown], [role=menu]',
      $.fn.dropdown.Constructor.prototype.keydown,
    );
}
